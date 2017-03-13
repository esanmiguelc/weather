module WeatherDecoder exposing 
  ( weatherForecast
  , Temperature
  , Weather
  , Forecast
  )

import Json.Decode as Decode

type alias Weather =
  { forecast : List Forecast
  }

type alias Temperature = 
  { celsius : String
  }

type alias Forecast =
  { conditions : String
  , high : Temperature
  , low : Temperature
  , epoch : String
  }

temperature : Decode.Decoder Temperature
temperature =
  Decode.map Temperature
  (Decode.field "celsius" Decode.string)

forecast : Decode.Decoder Forecast
forecast =
  Decode.map4 Forecast
    (Decode.field "conditions" Decode.string)
    (Decode.field "high" temperature)
    (Decode.field "low" temperature)
    (Decode.at ["date", "epoch"] Decode.string)

weatherForecast : Decode.Decoder Weather
weatherForecast =
  Decode.map Weather
    <| Decode.at ["forecast", "simpleforecast", "forecastday"] 
    <| Decode.list forecast

