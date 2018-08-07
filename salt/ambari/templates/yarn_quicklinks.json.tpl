{
  "name": "default",
  "description": "default quick links configuration",
  "configuration": {
    "protocol":
    {
      "type":"https",
      "checks":[
        {
          "property":"yarn.http.policy",
          "desired":"HTTPS_ONLY",
          "site":"yarn-site"
        }
      ]
    },

    "links": [
      {
        "name": "resourcemanager_ui",
        "label": "ResourceManager UI",
        "requires_user_name": "false",
        "url": "{{ service_proxy_url }}/",
        "port":{
          "http_property": "yarn.resourcemanager.webapp.address",
          "http_default_port": "8088",
          "https_property": "yarn.resourcemanager.webapp.https.address",
          "https_default_port": "8090",
          "regex": "\\w*:(\\d+)",
          "site": "yarn-site"
        }
      },
      {
        "name": "resourcemanager_logs",
        "label": "ResourceManager logs",
        "requires_user_name": "false",
        "url": "{{ service_proxy_url }}/logs",
        "port":{
          "http_property": "yarn.resourcemanager.webapp.address",
          "http_default_port": "8088",
          "https_property": "yarn.resourcemanager.webapp.https.address",
          "https_default_port": "8090",
          "regex": "\\w*:(\\d+)",
          "site": "yarn-site"
        }
      },
      {
        "name": "resourcemanager_jmx",
        "label":"ResourceManager JMX",
        "requires_user_name": "false",
        "url":"{{ service_proxy_url }}/jmx",
        "port":{
          "http_property": "yarn.resourcemanager.webapp.address",
          "http_default_port": "8088",
          "https_property": "yarn.resourcemanager.webapp.https.address",
          "https_default_port": "8090",
          "regex": "\\w*:(\\d+)",
          "site": "yarn-site"
        }
      },
      {
        "name": "thread_stacks",
        "label":"Thread Stacks",
        "requires_user_name": "false",
        "url":"{{ service_proxy_url }}/stacks",
        "port":{
          "http_property": "yarn.resourcemanager.webapp.address",
          "http_default_port": "8088",
          "https_property": "yarn.resourcemanager.webapp.https.address",
          "https_default_port": "8090",
          "regex": "\\w*:(\\d+)",
          "site": "yarn-site"
        }
      }
    ]
  }
}