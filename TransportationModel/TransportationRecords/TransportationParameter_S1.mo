within TransportationModel.TransportationRecords;

record TransportationParameter_S1
//Average KMs
  parameter Real AverageKMCarRuns = 13500;
  parameter Real AverageKMLightTruckRuns = 18910;
  parameter Real AverageKMHeavyTruckRuns = 34924;
  parameter Real AverageKMBusRuns  = 66120;
  
  
//Car Ban Year
  parameter Real DieselCarBanYear = 2100;
  parameter Real ElectricCarBanYear = 2119;
  parameter Real PetrolCarBanYear = 2100;
  parameter Real PHeVCarBanYear = 2100; 
  parameter Real BiogasCarBanYear = 2100;
//Light Truck Ban Year

  parameter Real LightPetrolTruckBanYear = 2100; 
  parameter Real LightDieselTruckBanYear = 2100; 
  parameter Real LightElectricTruckBanYear = 2100;
  parameter Real LightPHeVTruckBanYear = 2100; 
  parameter Real LightBioGasTruckBanYear = 2100;
//Heavy Truck Ban Year  
    
  parameter Real HeavyPetrolTruckBanYear = 2100; 
  parameter Real HeavyElectricTruckBanYear = 2100; 
  parameter Real HeavyBiogasTruckBanYear = 2100;
  parameter Real HeavyHydrogenTruckBanYear =2100;
  parameter Real HeavyDieselTruckBanYear = 2100;   
//Bus Ban Year
 
  parameter Real ElectricBusBanYear = 2100;
  parameter Real GasBusBanYear = 2100;
  parameter Real HydrogenBusBanYear = 2100;
  parameter Real DieselBusBanYear = 2100;



//Initial Level Of Cars
  parameter Real InitialLevel = 4.9;
  parameter Real InitialLevelofPetrolCar = 3057530 ;
  parameter Real InitialLevelofDieselCar = 1704457;
  parameter Real InitialLevelofPHeVCar = 49394;
  parameter Real InitialLevelofEV = 1664;
  parameter Real InitialLevelofBiogasCars = 42463;

//Initial Level of Light Truck
  parameter Real InitialLevelofLightPetrolTruck = 49065;
  parameter Real InitialLevelofLightPHeVTruck = 9;
  parameter Real InitialLevelofLightElectricTruck = 2661;
  parameter Real InitialLevelofLightDieselTruck = 511893;
  parameter Real InitialLevelofLightBiogasTruck = 8447 ;
  
//Initial Level of Heavy Truck
  parameter Real InitialLevelofHeavyElectricTruck = 4;
  parameter Real InitialLevelofHeavyPetrolTruck = 1160;  
  parameter Real InitialLevelofHeavyBiogasTruck = 920 ;
  parameter Real InitialLevelofHeavyHydrogenTruck = 0 ;
  parameter Real InitialLevelofHeavyDieselTruck  = 82034 ;

//InitialLevel of Bus
  parameter Real InitialLevelofDieselBus = 12028;  
  parameter Real InitialLevelofElectricBus = 268;  
  parameter Real InitialLevelofGasBus = 2618;   
  parameter Real InitialLevelofHydrogenBus = 0;   
  
//Car co2 Emissions
  parameter Real ElectricCarCO2EmissionperYear = 0;
  parameter Real DieselCarCO2EmissionperYear = 185.94;  
  parameter Real PetrolCarCO2EmissionperYear = 317.40;
  parameter Real PHeVCarCO2MultiplicationFactor = 0.5;
  parameter Real BiogasCarCO2EmissionperYear = 45.5;
  
//Light Truck co2 Emission 
  parameter Real LightPetrolTruckCO2EmissionperYear = 332.64;  
  parameter Real LightPHeVTruckCO2MultiplicationFactor = 0.5;
  parameter Real LightElectricTruckCO2EmissionperYear = 0;
  parameter Real LightDieselTruckCO2EmissionperYear = 209.076; 
  parameter Real LightBiogasTruckCO2EmissionperYear = 51.17; 
    
//Heavy Truck CO2 Emission
  parameter Real HeavyPetrolTruckCO2EmissionperYear = 1304.16;    
  parameter Real HeavyElectricTruckCO2EmissionperYear = 0;
  parameter Real HeavyDieselTruckCO2EmissionperYear = 1163.28;
  parameter Real HeavyBiogasTruckCO2EmissionperYear = 273;
  parameter Real HeavyHydrogenTruckCO2EmissionperYear = 378;
  
//Bus CO2 Emission
  parameter Real DieselBusCO2EmissionperYear = 445.4;   
  parameter Real ElectricBusCO2EmissionperYear = 0;
  parameter Real GasBusCO2EmissionperYear = 119;  
  parameter Real HydrogenBusCO2EmissionperYear  = 147;
     
  parameter Real SampleRate = 1;
  parameter Real StartSimulationYear = 2019;
  parameter Real StartTriggerTime = 1;
   
 
end TransportationParameter_S1;
