within TransportationModel.Scenarios.CurrentLegislationPlan;

model SimulationExample

  extends Modelica.Icons.Example;

  TransportationIntegrator Simulator;
  protected
  
    annotation(
    experiment(StartTime = 2019, StopTime = 2035, Tolerance = 1e-06, Interval = 0.002));

end SimulationExample;
