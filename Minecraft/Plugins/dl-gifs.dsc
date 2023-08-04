Gif:
  type: command
  name: gif
  arguments: '<text>'
  script:
    - define apikey "LIVDSRZULELA"
    - define limit 2
    - ~webget "https://g.tenor.com/v1/random?q=<context.args.get[1]>&key=<[apikey]>&limit=<[limit]>&media_filter=minimal" savefile:plugins/Denizen/data/gif-api/gifs.json
