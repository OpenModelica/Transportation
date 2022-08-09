within TransportationModel;

package UsersGuide "User's Guide"
  extends Modelica.Icons.Information;

  class Overview "Overview of Power Grid"
    extends Modelica.Icons.Information;
    annotation(
      Documentation(info = "<html><head></head><body><br><div>It is a model which have three scenarios of Transportation Model i.e., Scenario 1, Scenario 2, Scenario 3 and Scenario 4. Under each Scenario , There are Four modules i.e., Transportation Hub, Environmental Hub, Transportation Parameter and Transportation Integrator .Transportation Integrator is a main executable File. The file will run for the time pireod of 2019 to 2035 which is hard coded in the program. All the data is comming from the resource folder under the transportation model that consist of the Combitables. If user get new data for this package, then combitable must be changed with new data. The user will get three files in the output simulation screen:</div><div><ul><li>EnvironmentalHub</li><li>TP</li><li>TransportationHub</li></ul></div><div><br></div><div><b><u>System Parameters</u></b></div>
<div><br></div><div><p>This section describes how parameters are placed and how it can be changed to get different values to get different secnarios.</p><p>All parameters are placed in respected&nbsp;Scenario<i>&nbsp;</i>with its name<a href=\"modelica://TransportationModel.TransportationRecords\">&nbsp;</a><i><a href=\"modelica://TransportationModel.Scenarios.Scenario1.TransportationParameter\">TransportationParameter.</a></i></p><p><b><u>How to Simulate this package</u></b></p></div><div><ul><li>Start with Simulating <a href=\"modelica://TransportationModel.Scenarios.Scenario1.TransportationIntegrator\">TransportationIntegrator</a>&nbsp;with all preset start and stop time.</li><li>The displayHubPort in Environmental Hub wil provide the results for Number of Vehicles, CO2 Emissions, whereas TransportionHub Will display the results for Growth rates and depletion rates.</li><li>Start with ploting the Indepletionrate, InGrowthRate, VehicleNos, CO2Emissions, NumberofTotalVehicle<span style=\"font-family: 'DejaVu Sans Mono';\">.</span></li><li><span style=\"font-family: 'DejaVu Sans Mono';\">By changing the parameters in the TP file(Will refect everywhere in the output screen), results an be analysed for sensitivity analysis</span></li></ul></div></body></html>"));
  end Overview;

  package ReleaseNotes "Release notes"
    extends Modelica.Icons.ReleaseNotes;

    class Version_0_0 "Version 0.0 (September 08, 2021)"
      extends Modelica.Icons.ReleaseNotes;
      annotation(
        Documentation(info = "Version 0.1 (Sep. 23, 2021)</li></ul><p>Few modification in first version of the library.</p>
  </body></html>"));
    end Version_0_0;

    class Version_0_1 "Version 0.1 (September 23, 2021)"
      extends Modelica.Icons.ReleaseNotes;
      annotation(
        Documentation(info = "<html><head></head><body><ul>
    <li>Version 0.0&nbsp;(Sep. 08, 2021)</li></ul>
    <p>
    First release of the library.</p><ul><li>Version 0.1 (Sep. 23, 2021)</li></ul><p>Few modification in first version of the library.</p>
    </body></html>"));
    end Version_0_1;

    class Version_0_2
      extends Modelica.Icons.ReleaseNotes;
      annotation(
        Documentation(info = "<html><head></head><body><ul>
    <li>Version 0.0&nbsp;(Sep. 08, 2021)</li></ul>
    <p>
    First release of the library.</p><ul><li>Version 0.1 (Sep. 23, 2021)</li></ul><p>Few modification in first version of the library.</p><p><ul><li>Version 0.2 (Apr. 08, 2022)<p style=\"color: rgb(0, 0, 0); font-family: -webkit-standard; font-style: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px;\"></p><ul></ul></li></ul></p><p style=\"color: rgb(0, 0, 0); font-family: -webkit-standard; font-style: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px;\"><br></p>
    
    </body></html>"));
    end Version_0_2;
    annotation(
      Documentation(info = "<html><head></head><body><p>
  This section summarizes the changes that have been performed
  on the TransportationModel library.
  </p>
  
  <table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
  <tbody><tr><td><a href=\"modelica://TransportationModel.UsersGuide.ReleaseNotes.Version_0_0\">Version&nbsp;0.0</a></td><td>September 15 2021</td></tr>
 </tbody></table></body></html>"));
  end ReleaseNotes;

  class Contact "Contact"
    extends Modelica.Icons.Contact;
    annotation(
      Documentation(info = "<html><head></head><body><dl><dt>The TransportationModel (this Modelica package) is developed by:<br><br></dt>
<dd><p><b><font size=\"4\">Modelicon Infotech LLP</font></b><br></p><p style=\"text-align: justify;\"><!--StartFragment--><span style=\"font-family: arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">174, 19th Main Rd,&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"font-family: arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Sector 4, HSR Layout,</span></p><p style=\"text-align: justify;\"><span style=\"font-family: arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Bengaluru,&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"font-family: arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);\">Karnataka 560102</span><!--EndFragment-->

</p><p><font size=\"4\">India</font></p></dd><dd></dd></dl>

</body></html>"));
  end Contact;
  annotation(
    DocumentationClass = true,
    Documentation(info = "<html><head></head><body><p style=\"orphans: 2; widows: 2;\">This package has been developed to Simulate Different Transportation Models Scenarios for electrification of the vehicle fleet for the reduction of Carbon Foot Print. This package is model of physical Road Transportation which consists of Four kind of vehicles &nbsp;(such as <b>Cars, Light Trucks, Heavy Trucks</b> and<b> Buses</b>) and sub catagorized as <b>Petrol Vehilces, Diesel Vehicles, PHeV Vehicles, Biogas Vehicles </b>and<b> Electric Vehicles.</b></p>
<p>This packages contains different sub-packages:</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tbody><tr>
  <td><a href=\"modelica://TransportationModel.Icons\">Icons</a></td>
  <td>It contains all Icons required for this sub-package.</td>
</tr>

<tr><td><a href=\"modelica://TransportationModel.Interfaces\">Interfaces</a></td>
   <td>port is in this sub-package.</td>
   
</tr>

<tr>
  <td><a href=\"modelica://TransportationModel.LogicBox\">LogicBox</a></td>
  <td>Contains Growth and depletion rate logic for vehicle Fleet</td>
</tr>

<tr><td><a href=\"modelica://TransportationModel.Components\">Components</a></td>
    <td>Contains all required components for this package.</td>
</tr>

<tr>

</tr>
</tbody></table>
<div><br></div>


<div><b>Objects inside </b><b><a href=\"modelica://TransportationModel.Interfaces\">Interfaces</a></b></div>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tbody><tr>
  <td><a href=\"modelica://TransportationModel.Interfaces.Bus\">Bus</a></td>
  <td>Exapndable Connector use to connect different vehicles</td>
</tr>
<tr>
  <td><a href=\"modelica://TransportationModel.Interfaces.SignalOutPort\">SignalOutPort</a></td>
  <td>Used &nbsp;for input signal</td>
</tr>
<tr>
  <td><a href=\"modelica://TransportationModel.Interfaces.SignalInPort\">SignalInPort</a></td>
  <td>Used for output signal</td></tr></tbody></table>





<br><div><b>Objects inside <a href=\"modelica://TransportationModel.Components\">Components</a></b></div>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tbody><tr>
  <td><a href=\"modelica://TransportationModel.Components.VehiclePool\">VehiclePool</a></td>
  <td>This component comprises of Vehicle Pool logic for Cars to calculation as per growth rate and depletion rate </td>
</tr>
<tr>
  <td><a href=\"modelica://TransportationModel.Components.TruckPool\">TruckPool</a></td>
  <td>This component comprises of Vehicle Pool logic for Light and Heavy Truck to calculation as per growth rate and depletion rate</td>
</tr>
<tr>
  <td><a href=\"modelica://TransportationModel.Components.BusPool\">BusPool</a></td>
  <td>This component comprises of Vehicle Pool logic for Buses to calculation as per growth rate and depletion rate</td>
</tr>

</tbody>
</table>
<br><div><b>Objects inside <a href=\"modelica://TransportationModel.Scenarios\">Scenarios</a></b></div>
<div><br></div><table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tbody><tr>
  <td><a href=\"modelica://TransportationModel.Scenarios.Scenario1\">Scenario1</a></td>
  <td>This example comprises of a scenario Where no ban on any fuel is implemented i.e., vehicle growth rate is high and depletion rate is low</td>
</tr>
<tr>
  <td><a href=\"modelica://TransportationModel.Scenarios.Scenario2\">Scenario2</a></td>
  <td>This example comprises of a scenario Where ban on fuels is implemented as per legislation plan i.e., vehicle growth rate  and depletion rate is decided by government </td>
</tr>
<tr>
  <td><a href=\"modelica://TransportationModel.Scenarios.Scenario3\">Scenario3</a></td>
  <td>This example comprises of a scenario Where ban on fuels is implemented in fast transition mode i.e., vehicle growth rate will become zero once fossil is banned </td>
</tr>


</tbody></table><b><br></b><div><b>Objects inside each &nbsp;<a href=\"modelica://TransportationModel.Scenarios\">Scenarios</a></b><br><br><table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tbody><tr>
  <td><a href=\"modelica://TransportationModel.Scenarios.Scenario1.TransportationHub\">TransportationHub</a></td>
  <td>Transportation hub consist of all kind of vehicles with there growth and depletion rate to calculate the number of vehicles in the end of the simulation&nbsp;</td>
</tr>
<tr>
  <td><a href=\"modelica://TransportationModel.Scenarios.Scenario1.EnvironmentalHub\">EnvironmentalHub</a></td>
  <td>Environment Hub consist of the CO2 emission calculation from each vehicle and get multiplied to the total number of vehicles from transportation hub Expandable connector&nbsp;</td></tr><tr><td><a href=\"modelica://TransportationModel.Scenarios.Scenario1.TransportationIntegrator\">TransportationIntegrator</a></td>
  <td>It connects the transportation Hub to the environment hub to calculate the final vehicle of all catogory and the effect on the CO2 emission.</td>
</tr>
<tr>
  <td><a href=\"modelica://TransportationModel.Scenarios.Scenario1.TransportationParameter\">TransportationParameter</a></td>
  <td>To Change the Parameter for Sensitivity analysis.</td>
</tr>

</tbody>
</table>

</div></body></html>"));
end UsersGuide;
