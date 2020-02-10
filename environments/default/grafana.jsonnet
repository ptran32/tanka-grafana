{
  // Grafana
  grafana: {
    deployment: $.k.deployment.new("grafana", [{
      image: 'grafana/grafana',
      name: 'grafana',
      ports: [{
        containerPort: 3000,
        name: 'ui',
      }],
    }]),
    service: $.k.service.new('grafana', [{
        name: 'grafana',
        port: 3000,
        targetPort: 3000,
      }]), 
  }
}