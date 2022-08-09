within TransportationModel.Scenarios.BusinessAsUsual;

model Integrator
    inner TransportationModel.TransportationRecords.TransportationParameter_S1 TP;
  
    Real year(start = TP.StartSimulationYear);

  TransportationModel.Scenarios.BusinessAsUsual.CarTransportationHub carTransportationHub annotation(
    Placement(visible = true, transformation(origin = {-57, -37}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
  TransportationModel.Scenarios.BusinessAsUsual.CarEnvironmentHub carEnvironmentHub annotation(
    Placement(visible = true, transformation(origin = {52, 76}, extent = {{-38, -38}, {38, 38}}, rotation = 0)));
equation
  when sample(TP.StartTriggerTime, TP.SampleRate) then
    year = pre(year) + 1;
  end when;
  
  connect(carTransportationHub.CarTransportationHub, carEnvironmentHub.TransportationHubBus) annotation(
    Line(points = {{-22, -36}, {0, -36}, {0, 76}, {14, 76}}, color = {255, 204, 51}, thickness = 0.5));
end Integrator;
