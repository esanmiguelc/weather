require 'sinatra'

get '/forecast' do
content_type 	"application/json"
sleep(1)
headers({
	"Access-Control-Allow-Origin" => "*"
})
"{
  \"response\": {
  \"version\":\"0.1\",
  \"termsofService\":\"http://www.wunderground.com/weather/api/d/terms.html\",
  \"features\": {
  \"forecast\": 1
  }
	}
		,
	\"forecast\":{
		\"txt_forecast\": {
		\"date\":\"3:51 PM AST\",
		\"forecastday\": [
		{
		\"period\":0,
		\"icon\":\"partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/partlycloudy.gif\",
		\"title\":\"Saturday\",
		\"fcttext\":\"Partly cloudy. Lows overnight in the upper 60s.\",
		\"fcttext_metric\":\"Partly cloudy. Low 21C.\",
		\"pop\":\"10\"
		}
		,
		{
		\"period\":1,
		\"icon\":\"nt_partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/nt_partlycloudy.gif\",
		\"title\":\"Saturday Night\",
		\"fcttext\":\"Some clouds. Low 69F. Winds light and variable.\",
		\"fcttext_metric\":\"Partly cloudy. Low 21C. Winds light and variable.\",
		\"pop\":\"10\"
		}
		,
		{
		\"period\":2,
		\"icon\":\"chancerain\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/chancerain.gif\",
		\"title\":\"Sunday\",
		\"fcttext\":\"Cloudy with occasional showers. High 87F. Winds ESE at 10 to 15 mph. Chance of rain 50%.\",
		\"fcttext_metric\":\"Overcast with rain showers at times. High near 30C. Winds ESE at 10 to 15 km/h. Chance of rain 50%.\",
		\"pop\":\"50\"
		}
		,
		{
		\"period\":3,
		\"icon\":\"nt_chancerain\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/nt_chancerain.gif\",
		\"title\":\"Sunday Night\",
		\"fcttext\":\"Rain showers early with mostly clear conditions later at night. Low around 70F. Winds ENE at 5 to 10 mph. Chance of rain 50%.\",
		\"fcttext_metric\":\"Rain showers early with clearing later at night. Low 21C. Winds ENE at 10 to 15 km/h. Chance of rain 40%.\",
		\"pop\":\"50\"
		}
		,
		{
		\"period\":4,
		\"icon\":\"partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/partlycloudy.gif\",
		\"title\":\"Monday\",
		\"fcttext\":\"Partly cloudy. High 86F. Winds ESE at 10 to 15 mph.\",
		\"fcttext_metric\":\"Partly cloudy skies. High near 30C. Winds ESE at 15 to 25 km/h.\",
		\"pop\":\"10\"
		}
		,
		{
		\"period\":5,
		\"icon\":\"nt_partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/nt_partlycloudy.gif\",
		\"title\":\"Monday Night\",
		\"fcttext\":\"A few clouds. Low near 70F. Winds ENE at 5 to 10 mph.\",
		\"fcttext_metric\":\"A few clouds from time to time. Low 21C. Winds ENE at 10 to 15 km/h.\",
		\"pop\":\"10\"
		}
		,
		{
		\"period\":6,
		\"icon\":\"partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/partlycloudy.gif\",
		\"title\":\"Tuesday\",
		\"fcttext\":\"Intervals of clouds and sunshine. High 87F. Winds SE at 10 to 15 mph.\",
		\"fcttext_metric\":\"A few clouds early, otherwise mostly sunny. High near 30C. Winds SE at 15 to 25 km/h.\",
		\"pop\":\"10\"
		}
		,
		{
		\"period\":7,
		\"icon\":\"nt_partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/nt_partlycloudy.gif\",
		\"title\":\"Tuesday Night\",
		\"fcttext\":\"A few clouds from time to time. Low 68F. Winds E at 5 to 10 mph.\",
		\"fcttext_metric\":\"Partly cloudy skies. Low around 20C. Winds E at 10 to 15 km/h.\",
		\"pop\":\"10\"
		}
		]
		},
		\"simpleforecast\": {
		\"forecastday\": [
		{\"date\":{
	\"epoch\":\"1489273200\",
	\"pretty\":\"7:00 PM AST on March 11, 2017\",
	\"day\":11,
	\"month\":3,
	\"year\":2017,
	\"yday\":69,
	\"hour\":19,
	\"min\":\"00\",
	\"sec\":0,
	\"isdst\":\"0\",
	\"monthname\":\"March\",
	\"monthname_short\":\"Mar\",
	\"weekday_short\":\"Sat\",
	\"weekday\":\"Saturday\",
	\"ampm\":\"PM\",
	\"tz_short\":\"AST\",
	\"tz_long\":\"America/Santo_Domingo\"
},
		\"period\":1,
		\"high\": {
		\"fahrenheit\":\"84\",
		\"celsius\":\"28\"
		},
		\"low\": {
		\"fahrenheit\":\"69\",
		\"celsius\":\"21\"
		},
		\"conditions\":\"Partly Cloudy\",
		\"icon\":\"partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/partlycloudy.gif\",
		\"skyicon\":\"\",
		\"pop\":10,
		\"qpf_allday\": {
		\"in\": 0.00,
		\"mm\": 0
		},
		\"qpf_day\": {
		\"in\": null,
		\"mm\": null
		},
		\"qpf_night\": {
		\"in\": 0.00,
		\"mm\": 0
		},
		\"snow_allday\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"snow_day\": {
		\"in\": null,
		\"cm\": null
		},
		\"snow_night\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"maxwind\": {
		\"mph\": 7,
		\"kph\": 11,
		\"dir\": \"NE\",
		\"degrees\": 0
		},
		\"avewind\": {
		\"mph\": 4,
		\"kph\": 6,
		\"dir\": \"East\",
		\"degrees\": 0
		},
		\"avehumidity\": 87,
		\"maxhumidity\": 0,
		\"minhumidity\": 0
		}
		,
		{\"date\":{
	\"epoch\":\"1489359600\",
	\"pretty\":\"7:00 PM AST on March 12, 2017\",
	\"day\":12,
	\"month\":3,
	\"year\":2017,
	\"yday\":70,
	\"hour\":19,
	\"min\":\"00\",
	\"sec\":0,
	\"isdst\":\"0\",
	\"monthname\":\"March\",
	\"monthname_short\":\"Mar\",
	\"weekday_short\":\"Sun\",
	\"weekday\":\"Sunday\",
	\"ampm\":\"PM\",
	\"tz_short\":\"AST\",
	\"tz_long\":\"America/Santo_Domingo\"
},
		\"period\":2,
		\"high\": {
		\"fahrenheit\":\"87\",
		\"celsius\":\"31\"
		},
		\"low\": {
		\"fahrenheit\":\"70\",
		\"celsius\":\"21\"
		},
		\"conditions\":\"Chance of Rain\",
		\"icon\":\"chancerain\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/chancerain.gif\",
		\"skyicon\":\"\",
		\"pop\":50,
		\"qpf_allday\": {
		\"in\": 0.09,
		\"mm\": 2
		},
		\"qpf_day\": {
		\"in\": 0.06,
		\"mm\": 2
		},
		\"qpf_night\": {
		\"in\": 0.02,
		\"mm\": 1
		},
		\"snow_allday\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"snow_day\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"snow_night\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"maxwind\": {
		\"mph\": 15,
		\"kph\": 24,
		\"dir\": \"ESE\",
		\"degrees\": 108
		},
		\"avewind\": {
		\"mph\": 10,
		\"kph\": 16,
		\"dir\": \"ESE\",
		\"degrees\": 108
		},
		\"avehumidity\": 76,
		\"maxhumidity\": 0,
		\"minhumidity\": 0
		}
		,
		{\"date\":{
	\"epoch\":\"1489446000\",
	\"pretty\":\"7:00 PM AST on March 13, 2017\",
	\"day\":13,
	\"month\":3,
	\"year\":2017,
	\"yday\":71,
	\"hour\":19,
	\"min\":\"00\",
	\"sec\":0,
	\"isdst\":\"0\",
	\"monthname\":\"March\",
	\"monthname_short\":\"Mar\",
	\"weekday_short\":\"Mon\",
	\"weekday\":\"Monday\",
	\"ampm\":\"PM\",
	\"tz_short\":\"AST\",
	\"tz_long\":\"America/Santo_Domingo\"
},
		\"period\":3,
		\"high\": {
		\"fahrenheit\":\"86\",
		\"celsius\":\"30\"
		},
		\"low\": {
		\"fahrenheit\":\"70\",
		\"celsius\":\"21\"
		},
		\"conditions\":\"Partly Cloudy\",
		\"icon\":\"partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/partlycloudy.gif\",
		\"skyicon\":\"\",
		\"pop\":10,
		\"qpf_allday\": {
		\"in\": 0.00,
		\"mm\": 0
		},
		\"qpf_day\": {
		\"in\": 0.00,
		\"mm\": 0
		},
		\"qpf_night\": {
		\"in\": 0.00,
		\"mm\": 0
		},
		\"snow_allday\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"snow_day\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"snow_night\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"maxwind\": {
		\"mph\": 15,
		\"kph\": 24,
		\"dir\": \"ESE\",
		\"degrees\": 114
		},
		\"avewind\": {
		\"mph\": 10,
		\"kph\": 16,
		\"dir\": \"ESE\",
		\"degrees\": 114
		},
		\"avehumidity\": 74,
		\"maxhumidity\": 0,
		\"minhumidity\": 0
		}
		,
		{\"date\":{
	\"epoch\":\"1489532400\",
	\"pretty\":\"7:00 PM AST on March 14, 2017\",
	\"day\":14,
	\"month\":3,
	\"year\":2017,
	\"yday\":72,
	\"hour\":19,
	\"min\":\"00\",
	\"sec\":0,
	\"isdst\":\"0\",
	\"monthname\":\"March\",
	\"monthname_short\":\"Mar\",
	\"weekday_short\":\"Tue\",
	\"weekday\":\"Tuesday\",
	\"ampm\":\"PM\",
	\"tz_short\":\"AST\",
	\"tz_long\":\"America/Santo_Domingo\"
},
		\"period\":4,
		\"high\": {
		\"fahrenheit\":\"87\",
		\"celsius\":\"31\"
		},
		\"low\": {
		\"fahrenheit\":\"68\",
		\"celsius\":\"20\"
		},
		\"conditions\":\"Partly Cloudy\",
		\"icon\":\"partlycloudy\",
		\"icon_url\":\"http://icons.wxug.com/i/c/k/partlycloudy.gif\",
		\"skyicon\":\"\",
		\"pop\":10,
		\"qpf_allday\": {
		\"in\": 0.00,
		\"mm\": 0
		},
		\"qpf_day\": {
		\"in\": 0.00,
		\"mm\": 0
		},
		\"qpf_night\": {
		\"in\": 0.00,
		\"mm\": 0
		},
		\"snow_allday\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"snow_day\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"snow_night\": {
		\"in\": 0.0,
		\"cm\": 0.0
		},
		\"maxwind\": {
		\"mph\": 15,
		\"kph\": 24,
		\"dir\": \"SE\",
		\"degrees\": 126
		},
		\"avewind\": {
		\"mph\": 10,
		\"kph\": 16,
		\"dir\": \"SE\",
		\"degrees\": 126
		},
		\"avehumidity\": 74,
		\"maxhumidity\": 0,
		\"minhumidity\": 0
		}
		]
		}
	}
}"
end
