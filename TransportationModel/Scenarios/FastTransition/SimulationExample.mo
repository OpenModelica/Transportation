within TransportationModel.Scenarios.FastTransition;

model SimulationExample
  extends Modelica.Icons.Example;
  TransportationIntegrator Simulator;
 protected
  annotation(
    experiment(StartTime = 0, StopTime = 16, Tolerance = 1e-06, Interval = 0.002));
end SimulationExample;
