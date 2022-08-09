within TransportationModel.Scenarios.CurrentLegislationPlan;

model Integrator
  Real year(start = 2019);
  Example example annotation(
    Placement(visible = true, transformation(origin = {-72, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Example2 example2 annotation(
    Placement(visible = true, transformation(origin = {40, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  when sample(1,1) then
    year = pre(year)+1;
  end when;
  
  connect(example.TransportationHubBus, example2.TransportationHub) annotation(
    Line(points = {{-52, -50}, {-2, -50}, {-2, 56}, {30, 56}}, color = {255, 204, 51}, thickness = 0.5));
end Integrator;
