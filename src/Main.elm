import Html exposing (Html, div, p, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)
import WeatherDecoder exposing (..)
import FetchWeather exposing (..)
import Http
import Time as Timex
import Date
import Array

type alias Model =
  { weather : Weather
  , weatherFetched : Bool
  }

type Msg =
  WeatherUpdate (Result Http.Error Weather)

init : (Model, Cmd Msg)
init =
    ( { weather = Weather [], weatherFetched = False } , getCurrentWeather WeatherUpdate )

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    WeatherUpdate (Ok result) ->
      ( { model | weather = result , weatherFetched = True }, Cmd.none )
    WeatherUpdate (Err result) ->
      ( model, Cmd.none )

emptyReading : Model -> Html Msg
emptyReading _ =
    p [] [ text ("Alta: " ++ "--" ++ "C")
         , p [] [ text "--" ] ]

tempStyles =
  style [
    ("font-size", "0.75em")
    ]

getEpoch stringEpoch =
  case String.toFloat stringEpoch of
    (Ok val) ->
      val * 1000
    (Err _) ->
      0

getDate : String -> String
getDate milliEpoch =
  toString (Date.fromTime (getEpoch milliEpoch))

forecastNode : Forecast -> Html Msg
forecastNode forecast =
  div []
    [ p [] [ text (getDate forecast.epoch) ]
    , p [tempStyles] [ text forecast.conditions ]
    , p [tempStyles] [ text ("Alta / Baja: " ++ forecast.high.celsius ++ " / " ++ forecast.low.celsius ++ "C") ]
    ]

tempReading : Model -> List (Html Msg)
tempReading model =
  if model.weatherFetched then
    (List.map forecastNode model.weather.forecast)
  else
    [ emptyReading model ]

view : Model -> Html Msg
view model =
  div
    [ style
    [ ("display", "flex")
    , ("flex-direction", "row")
    , ("justify-content", "space-around")
    , ("font-family", "sans-serif")
    , ("color", "#666")
    , ("font-weight", "200")
    ]] (tempReading model)

main =
  Html.program
    { init = init
    , subscriptions = subscriptions
    , update = update
    , view = view
    }
