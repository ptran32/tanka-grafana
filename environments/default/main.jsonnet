(import "kubernetes.libsonnet") +
(import "grafana.jsonnet") +
(import "prometheus.jsonnet") +
{
  _config:: {
    grafana: {
      port: 3000,
      name: "grafana",
    },
    prometheus: {
      port: 9090,
      name: "prometheus"
    }
  }
}
