{
  "name": "default",
  "description": "default quick links configuration",
  "configuration": {
    "protocol":
    {
      "type":"HTTP_ONLY"
    },

    "links": [
      {
        "name": "spark_history_server_ui",
        "label": "Spark History Server UI",
        "requires_user_name": "false",
        "component_name": "SPARK_JOBHISTORYSERVER",
        "url": "{{ service_proxy_url }}",
        "port":{
          "http_property": "spark.history.ui.port",
          "http_default_port": "18080",
          "https_property": "spark.history.ui.port",
          "https_default_port": "18080",
          "regex": "^(\\d+)$",
          "site": "spark-defaults"
        }
      }
    ]
  }
}