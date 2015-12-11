Write your plugin documentation here.

The following parameters are used to configuration the plugin's behavior:

* **url** - The URL to POST the webhook to.

The following is a sample {{ PLUGIN_NAME }} configuration in your 
.drone.yml file:

```yaml
notify:
  {{ PLUGIN_NAME }}:
    image: {{ ORG_OR_AUTHOR_USERNAME }}/{{ PLUGIN_NAME }}
    url: http://mockbin.org/
```
