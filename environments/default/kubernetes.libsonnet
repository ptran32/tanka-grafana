{
  // hidden k namespace for this library
  k:: {
    deployment: {
      new(name, containers): {
        apiVersion: "apps/v1",
        kind: "Deployment",
        metadata: {
          name: name,
        },
        spec: {
          selector: { matchLabels: {
            name: name,
          }},
          template: {
            metadata: { labels: {
              name: name,
            }},
            spec: { containers: containers }
          }
        }
      }
    },
    service: {
        new(name, value): {
          apiVersion: 'v1',
          kind: 'Service',
          metadata: { 
            labels: {
              name: name,
            },
            name: name,
          },
          spec: { ports: value ,
            selector: {
              name: name,
          },
            type: 'NodePort',
          }
      }
    }
  }
}