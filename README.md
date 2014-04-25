# MctsBustime

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'mcts_bustime'

Or install it yourself as:

    $ gem install mcts_bustime

## Usage

    mcts = MctsBustime.new("API_KEY")

# Requests
###[GetTime](http://realtime.ridemcts.com/bustime/apidoc/v1/main.jsp?section=time.jsp)
`mcts.gettime(params)`

####params :
`{"localestring" => "es/en_US"}` -- optional

####response : 

`{"tm" => "YYYYMMDD HH:MM:SS"}`

###[GetRoutes](http://realtime.ridemcts.com/bustime/apidoc/v1/main.jsp?section=time.jsp)
`mcts.getroutes(params)`
####params : 
`{"localestring" => "es/en_US"}` -- optional

####response : 

`{"route"=>{"rt"=>"21", "rtnm"=>"ROUTE 21", "rtclr"=>"#3399cc"}}`

###[GetVehicles](http://realtime.ridemcts.com/bustime/apidoc/v1/main.jsp?section=vehicles.jsp)
`mcts.getvehicles(params)`
####params : 
`{"rt" => [route numbers], "vid" => [vehicle ids], "format" => "json/xml", "localestring" => "es/en_US"}`
Note: Max of 10 vid's or rt's, use either rt or vid cannot use both

####response : 

`{"vehicle"=>[{"vid"=>"5328", "tmstmp"=>"20140425 16:43", "lat"=>"43.0601806640625", "lon"=>"-88.04215240478516", "hdg"=>"88", "pid"=>"12", "rt"=>"21", "des"=>"NORTH AVENUE TO UWM", "pdist"=>"4836", "spd"=>"41", "tablockid"=>"21 -307", "tatripid"=>"4203", "zone"=>nil}]}`

###[GetDirections](http://realtime.ridemcts.com/bustime/apidoc/v1/main.jsp?section=routeDirections.jsp)
`mcts.getdirections(params)`
####params : 
`{"rt" => 21, "localestring" => "es/en_US"}`

####response : 

`{"dir"=>["EAST", "WEST"]} `


###[GetStops](http://realtime.ridemcts.com/bustime/apidoc/v1/main.jsp?section=stops.jsp)
`mcts.getstops(params)`
####params : 
`{"rt" => 21, "dir" => "EAST/WEST", "localestring" => "es/en_US"}`

####response : 

`{"stop"=>[{"stpid"=>"3635", "stpnm"=>"BOOTH + MEINECKE", "lat"=>"43.061874090673", "lon"=>"-87.904081093253"}]}`


###[GetPatterns](http://realtime.ridemcts.com/bustime/apidoc/v1/main.jsp?section=patterns.jsp)
`mcts.getpatterns(params)`
####params : 
`{"rt" => 21, "pid" => [list of pids], "localestring" => "es/en_US"}`

####response : 

`{"ptr"=>[{"pid"=>"14", "ln"=>"56976.0", "rtdir"=>"WEST", "pt"=>[{"seq"=>"1", "lat"=>"43.074722787153", "lon"=>"-87.878834582012", "typ"=>"S", "stpid"=>"2536", "stpnm"=>"KENWOOD + STOWELL", "pdist"=>"0.0"}]}]}`

Note: Use either rt or pid cannot use both, max 10 pid's can be used




more info http://realtime.ridemcts.com/bustime/apidoc/v1/DeveloperAPIGuide.pdf
or http://realtime.ridemcts.com/bustime/apidoc/v1/main.jsp?section=documentation.jsp

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
