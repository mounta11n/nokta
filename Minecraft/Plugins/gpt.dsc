GPT:
  type: command
  name: gpt
  arguments: '<text>'
  script:
    - define API_KEY "sk-................................................"
    - define model "gpt-3.5-turbo"
    - define apiUrl "https://api.openai.com/v1/chat/completions"
    - define system '[{"role": "system", "content": "Du bist ein hilfreicher Assistent."}'
    - define user ' {"role": "user", "content": '
    - define end '}]'
    - ~webget <[apiUrl]> 'data:{"model": "<[model]>", "messages": <[system]>,<[user]>"<context.raw_args>"<[end]>}' headers:<map.with[Authorization].as[Bearer <[API_KEY]>].with[Content-Type].as[application/json]> savefile:plugins/Denizen/data/openai-api/openai.json
