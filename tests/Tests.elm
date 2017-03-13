module Tests exposing (..)

import Test exposing (..)
import Expect
import WeatherDecoder exposing (..)
import Json.Decode exposing (decodeString)


jsonString : String
jsonString =
  "{\"forecast\": {\"simpleforecast\": {\"forecastday\": [{ \"conditions\": \"hello\", \"low\": {\"celsius\": \"2\"}, \"high\": { \"celsius\": \"1\"}}]}}}"

all : Test
all =
    describe "Decodes properly" [
      test "Decodes the weather properly" <|
        \() -> Expect.equal (decodeString weatherForecast jsonString) (Ok (WeatherForecast [(Forecast "hello" (Temperature "1") (Temperature "2"))]))
      ]
