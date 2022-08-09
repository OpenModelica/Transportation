within TransportationModel.Scenarios.FastTransition;

model TransportationIntegrator
  extends TransportationModel.Icons.TransportIntegrator;
  
  Real year(start = TP.StartSimulationYear);

//  inner TransportationModel.Utilites.TransportationParameters TP;
  inner TransportationModel.TransportationRecords.TransportationParameter_S3 TP;
  
  TransportationModel.Scenarios.FastTransition.TransportationHub transportationHub annotation(
    Placement(visible = true, transformation(origin = {-53, 49}, extent = {{-45, -45}, {45, 45}}, rotation = 0)));
  TransportationModel.Scenarios.FastTransition.EnvironmentHub environmentHub annotation(
    Placement(visible = true, transformation(origin = {46, -48}, extent = {{-46, -46}, {46, 46}}, rotation = 0)));
equation
  when sample(TP.StartTriggerTime, TP.SampleRate) then
    year = pre(year) + 1;
  end when;
  connect(transportationHub.VehiclesPoolBus, environmentHub.TransportationHubPort) annotation(
    Line(points = {{-8, 49}, {0, 49}, {0, -47}}, color = {255, 204, 51}, thickness = 0.5));
protected
  annotation(
    experiment(StartTime = 0, StopTime = 16, Tolerance = 1e-06, Interval = 0.002));
end TransportationIntegrator;
