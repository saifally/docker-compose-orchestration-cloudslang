namespace: io

imports:
  http: io.cloudslang.base.http

flow:
  name: ping_hosts

  workflow:
    - wait_for_port:
        do:
          http.verify_url_is_accessible:
            - url: http://container0:7000
            - attempts: '10'
        navigate:
         - SUCCESS: SUCCESS
         - FAILURE: FAILURE

  results:
    - SUCCESS
    - FAILURE
