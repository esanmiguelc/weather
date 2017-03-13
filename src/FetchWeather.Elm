module FetchWeather exposing (..)

import Http exposing (..)
import WeatherDecoder exposing (..)

url : String
url =
  if True then
    "https://api.wunderground.com/api/d4088af231ef0ab0/forecast/q/DO/Santo_Domingo.json"
  else
    "http://localhost:4567/forecast"

getRequest : Http.Request Weather
getRequest =
  Http.get url WeatherDecoder.weatherForecast

getCurrentWeather : (Result Error Weather -> msg) -> Cmd msg
getCurrentWeather message =
  Http.send message getRequest
