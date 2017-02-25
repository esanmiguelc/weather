import Html exposing (Html, div, p, text)
import Html.Events exposing (onClick)
import Http
import Array
import Json.Decode as Decode

type alias Model =
  { temp : Int
  , weather : String
  , weatherFetched : Bool
  }

type alias WeatherStatus =
  { weather : String
  , temp : Float
  }

type Msg =
  WeatherUpdate (Result Http.Error Float)

decodeData : Decode.Decoder Float
decodeData =
  (Decode.at ["main", "temp"] Decode.float)

getRequest : Http.Request Float
getRequest =
  Http.get "http://api.openweathermap.org/data/2.5/weather?q=santo+domingo&appid=2f0a5e81e7e8502ed4f1b057d7702480" decodeData

getCurrentWeather : Cmd Msg
getCurrentWeather =
  Http.send WeatherUpdate getRequest

init : (Model, Cmd Msg)
init =
    ( { temp = 0, weather = "Cloudy", weatherFetched = False } , getCurrentWeather )

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

toCelsius : Float -> Int
toCelsius result =
  (round (result - 273.13))

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    WeatherUpdate (Ok result) ->
      ( { model | temp = (toCelsius result), weatherFetched = True }, Cmd.none )

    WeatherUpdate (Err result) ->
      ( model, Cmd.none )

someStuff : Model -> Html Msg
someStuff model =
  if model.weatherFetched then
    p [] [ text ("Temperatura Actual: " ++ (toString model.temp) ++ "C") ]
  else
    p [] [ text ("Temperatura Actual: " ++ "--" ++ "C") ]

view : Model -> Html Msg
view model =
  div [] [someStuff model]

main =
  Html.program { init = init, subscriptions = subscriptions, update = update, view = view }
