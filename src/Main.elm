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
  , temp : Int
  }

type Msg =
  WeatherUpdate (Result Http.Error WeatherStatus)

decodeData : Decode.Decoder WeatherStatus
decodeData =
  Decode.map2 WeatherStatus
    (Decode.at ["current_observation", "weather"] Decode.string)
    (Decode.at ["current_observation", "temp_c"] Decode.int)

getRequest : Http.Request WeatherStatus
getRequest =
  Http.get "https://api.wunderground.com/api/d4088af231ef0ab0/conditions/q/DO/Santo_Domingo.json" decodeData

getCurrentWeather : Cmd Msg
getCurrentWeather =
  Http.send WeatherUpdate getRequest

init : (Model, Cmd Msg)
init =
    ( { temp = 0, weather = "Cloudy", weatherFetched = False } , getCurrentWeather )

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    WeatherUpdate (Ok result) ->
      ( { model | temp = result.temp, weatherFetched = True, weather = result.weather }, Cmd.none )

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
  div [] [ someStuff model
  , p [] [ text model.weather] ]

main =
  Html.program { init = init, subscriptions = subscriptions, update = update, view = view }
