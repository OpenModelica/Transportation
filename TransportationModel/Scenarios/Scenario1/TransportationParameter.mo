within TransportationModel.Scenarios.Scenario1;

record TransportationParameter
extends Modelica.Icons.Record;
//flag for cars
  parameter Boolean BiogasCars_flag  = false;
  parameter Boolean PetrolCars_flag  = false;
  parameter Boolean DieselCars_flag  = false;
  parameter Boolean PHeVCars_flag    = false;
 
//Activate Variable Average KM Flag for Cars
  parameter Boolean ActivateVariableAverageKMperPetrolCar = false;
  parameter Boolean ActivateVariableAverageKMperDieselCar = false;
  parameter Boolean ActivateVariableAverageKMperPHeVCar = false;
  parameter Boolean ActivateVariableAverageKMperBioCar = false;
  parameter Boolean ActivateVariableAverageKMperElectricCar = false;

//Activate Variable Average KM Flag for Light Truck
  parameter Boolean ActivateVariableAverageKMperLightPetrolTruck = false;
  parameter Boolean ActivateVariableAverageKMperLightDieselTruck = false;
  parameter Boolean ActivateVariableAverageKMperLightPHeVTruck = false;
  parameter Boolean ActivateVariableAverageKMperLightBioTruck = false;
  parameter Boolean ActivateVariableAverageKMperLightElectricTruck = false;
  
//Activate Variable Average KM Flag for Light Truck
  parameter Boolean ActivateVariableAverageKMperHeavyPetrolTruck = false;
  parameter Boolean ActivateVariableAverageKMperHeavyDieselTruck = false;
  parameter Boolean ActivateVariableAverageKMperHeavyHydrogenTruck = false;
  parameter Boolean ActivateVariableAverageKMperHeavyBioTruck = false;
  parameter Boolean ActivateVariableAverageKMperHeavyElectricTruck = false;
  
//Activate Variable Average KM Flag for Bus
  parameter Boolean ActivateVariableAverageKMperDieselBus = false;
  parameter Boolean ActivateVariableAverageKMperHydrogenBus = false;
  parameter Boolean ActivateVariableAverageKMperGasBus = false;
  parameter Boolean ActivateVariableAverageKMperElectricBus= false;
  
//flag for LightTruck
  parameter Boolean LightBiogasTruck_flag = false;
  parameter Boolean LightPetrolTruck_flag = false;
  parameter Boolean LightDieselTruck_flag = false;
  parameter Boolean LightPHeVTruck_flag   = false;
//flag for HeavyLorries
  parameter Boolean HeavyTruckBiogas_flag    = false;
  parameter Boolean HeavyTruckPetrol_flag    = false;
  parameter Boolean HeavyTruckDiesel_flag    = false;
  parameter Boolean HeavyTruckHydrogen_flag  = false;
//flag for Buses
  parameter Boolean GasBus_flag = false;
  parameter Boolean DieselBus_flag = false;
  parameter Boolean HydrogenBus_flag = false;
  
//Combitable Flag for Car Rate Logic
  parameter Boolean CarBiogasRateLogicFlag = false;
  parameter Boolean CarPetrolRateLogicFlag = false;
  parameter Boolean CarDieselRateLogicFlag = false;
  parameter Boolean CarPHeVRateLogicFlag = false;
  parameter Boolean CarElectricRateLogicFlag = false;
   
//Combitable Flag for HeavyTrucks Rate Logic
  parameter Boolean HeavyTruckBiogasRateLogicFlag = false;
  parameter Boolean HeavyTruckPetrolRateLogicFlag = false;
  parameter Boolean HeavyTruckDieselRateLogicFlag = false;
  parameter Boolean HeavyTruckHydrogenRateLogicFlag = false;
  parameter Boolean HeavyTruckElectricRateLogicFlag = false;

//Combitable Flag for Light Trucks Rate Logic
  parameter Boolean LightTruckBiogasRateLogicFlag = false;
  parameter Boolean LightTruckPetrolRateLogicFlag = false;
  parameter Boolean LightTruckDieselRateLogicFlag = false;
  parameter Boolean LightTruckPHeVRateLogicFlag = false;
  parameter Boolean LightTruckElectricRateLogicFlag  = false;

//Combitable Flag for Bus Rate Logic
  parameter Boolean GasBusRateLogicFlag = false;
  parameter Boolean DieselBusRateLogicFlag = false;
  parameter Boolean HydrogenBusRateLogicFlag = false;
  parameter Boolean ElectricBusRateLogicFlag = false;

//Emission Flags Fossil Combustion for Cars
  parameter Boolean FossilCombustionFlagforPetrolCar = true;
  parameter Boolean FossilCombustionFlagforDieselCar = true;
  parameter Boolean FossilCombustionFlagforBioCar = true;
  parameter Boolean FossilCombustionFlagforPHeVCar = true;
  parameter Boolean FossilCombustionFlagforElectricalCar = true;
  

//Emission Flags Bio Combustion cars 
  parameter Boolean BioCombustionFlagforPetrolCar = false;
  parameter Boolean BioCombustionFlagforDieselCar = false;
  parameter Boolean BioCombustionFlagforBioCar = false;
  parameter Boolean BioCombustionFlagforPHeVCar = false;
  
//Emission Flag for Upstream Fossil Combustion Cars
  parameter Boolean UpstreamFossilCombustionFlagforPetrolCar = false;
  parameter Boolean UpstreamFossilCombustionFlagforDieselCar = false;
  parameter Boolean UpstreamFossilCombustionFlagforBioCar = false;
  parameter Boolean UpstreamFossilCombustionFlagforPHeVCar = false;
  parameter Boolean UpstreamFossilCombustionFlagforElectricalCar = false;
  
//Emission Flags Bio Combustion Cars
  parameter Boolean UpstreamBioCombustionFlagforPetrolCar = false;
  parameter Boolean UpstreamBioCombustionFlagforDieselCar = false;
  parameter Boolean UpstreamBioCombustionFlagforBioCar = false;
  parameter Boolean UpstreamBioCombustionFlagforPHeVCar = false;
  
//Emission Flags Fossil Combustion for Light Trucks
  parameter Boolean FossilCombustionFlagforLightPetrolTruck = true;
  parameter Boolean FossilCombustionFlagforLightDieselTruck = true;
  parameter Boolean FossilCombustionFlagforLightBioTruck = true;
  parameter Boolean FossilCombustionFlagforLightPHeVTruck = true;
  parameter Boolean FossilCombustionFlagforLightElectricTruck = true;

//Emission Flags Bio Combustion Light Trucks
  parameter Boolean BioCombustionFlagforLightPetrolTruck = false;
  parameter Boolean BioCombustionFlagforLightDieselTruck = false;
  parameter Boolean BioCombustionFlagforLightBioTruck = false;
  parameter Boolean BioCombustionFlagforLightPHeVTruck = false;
  
//Emission Flag for Upstream Fossil Combustion Light Trucks
  parameter Boolean UpstreamFossilCombustionFlagforLightPetrolTruck = false;
  parameter Boolean UpstreamFossilCombustionFlagforLightDieselTruck = false;
  parameter Boolean UpstreamFossilCombustionFlagforLightBioTruck = false;
  parameter Boolean UpstreamFossilCombustionFlagforLightPHeVTruck = false;
  parameter Boolean UpstreamFossilCombustionFlagforLightElectricTruck = false;

//Emission Flags Upstream Bio Combustion Light Trucks
  parameter Boolean UpstreamBioCombustionFlagforLightPetrolTruck = false;
  parameter Boolean UpstreamBioCombustionFlagforLightDieselTruck = false;
  parameter Boolean UpstreamBioCombustionFlagforLightBioTruck = false;
  parameter Boolean UpstreamBioCombustionFlagforLightPHeVTruck = false;

//Emission Flags Fossil Combustion for Heavy Trucks
  parameter Boolean FossilCombustionFlagforHeavyPetrolTruck = true;
  parameter Boolean FossilCombustionFlagforHeavyDieselTruck = true;
  parameter Boolean FossilCombustionFlagforHeavyBioTruck = true;
  parameter Boolean FossilCombustionFlagforHeavyHydrogenTruck = true;
  parameter Boolean FossilCombustionFlagforHeavyElectricTruck = true;

//Emission Flags Bio Combustion Heavy Trucks
  parameter Boolean BioCombustionFlagforHeavyPetrolTruck = false;
  parameter Boolean BioCombustionFlagforHeavyDieselTruck = false;
  parameter Boolean BioCombustionFlagforHeavyBioTruck = false;
  parameter Boolean BioCombustionFlagforHeavyHydrogenTruck = false;
  
//Emission Flag for Upstream Fossil Combustion Heavy Trucks
  parameter Boolean UpstreamFossilCombustionFlagforHeavyPetrolTruck = false;
  parameter Boolean UpstreamFossilCombustionFlagforHeavyDieselTruck = false;
  parameter Boolean UpstreamFossilCombustionFlagforHeavyBioTruck = false;
  parameter Boolean UpstreamFossilCombustionFlagforHeavyHydrogenTruck = false;
  parameter Boolean UpstreamFossilCombustionFlagforHeavyElectricTruck = false;

//Emission Flags Upstream Bio Combustion Heavy Trucks
  parameter Boolean UpstreamBioCombustionFlagforHeavyPetrolTruck = false;
  parameter Boolean UpstreamBioCombustionFlagforHeavyDieselTruck = false;
  parameter Boolean UpstreamBioCombustionFlagforHeavyBioTruck = false;
  parameter Boolean UpstreamBioCombustionFlagforHeavyHydrogenTruck = false;
 
//Emission Flags Fossil Combustion for Buses
  parameter Boolean FossilCombustionFlagforDieselBus = true;
  parameter Boolean FossilCombustionFlagforGasBus = true;
  parameter Boolean FossilCombustionFlagforHydrogenBus = true;
  parameter Boolean FossilCombustionFlagforElectricBus = true;

//Emission Flags Bio Combustion 
  parameter Boolean BioCombustionFlagforDieselBus = false;
  parameter Boolean BioCombustionFlagforGasBus = false;
  parameter Boolean BioCombustionFlagforHydrogenBus = false;
  
//Emission Flag for Upstream Fossil Combustion
  parameter Boolean UpstreamFossilCombustionFlagforDieselBus = false;
  parameter Boolean UpstreamFossilCombustionFlagforGasBus = false;
  parameter Boolean UpstreamFossilCombustionFlagforHydrogenBus = false;
  parameter Boolean UpstreamFossilCombustionFlagforElectricBus = false;

//Emission Flags Upstream Bio Combustion 
  parameter Boolean UpstreamBioCombustionFlagforDieselBus = false;
  parameter Boolean UpstreamBioCombustionFlagforGasBus = false;
  parameter Boolean UpstreamBioCombustionFlagforHydrogenBus = false;
  
  
//Reduced Percentage of Cars
  parameter Real ReducedPercentageForPetrolCars= 0.02;
  parameter Real ReducedPercentageForDieselCars= 0.02;
  parameter Real ReducedPercentageForBioCars= 0.02;
  parameter Real ReducedPercentageForPHeVCars= 0.02;
  parameter Real ReducedPercentageForElectricCars= 0.02;

//Reduced Percentage of Light Truck
  parameter Real ReducedPercentageForLightPetrolTrucks= 0.02;
  parameter Real ReducedPercentageForLightDieselTrucks= 0.02;
  parameter Real ReducedPercentageForLightBioGasTrucks= 0.02;
  parameter Real ReducedPercentageForLightPHeVTrucks= 0.02;
  parameter Real ReducedPercentageForLightElectricTrucks= 0.02;
  
//Reduced Percentage of Heavy Truck
  parameter Real ReducedPercentageForHeavyPetrolTrucks= 0.02;
  parameter Real ReducedPercentageForHeavyDieselTrucks= 0.02;
  parameter Real ReducedPercentageForHeavyHydrogenTrucks= 0.02;
  parameter Real ReducedPercentageForHeavyBioGasTrucks= 0.02;
  parameter Real ReducedPercentageForHeavyElectricTrucks= 0.02;

//Reduced Percentage of Bus
  parameter Real ReducedPercentageForDieselBus= 0.02;
  parameter Real ReducedPercentageForGasBus= 0.02;
  parameter Real ReducedPercentageForHydrogenBus= 0.02;
  parameter Real ReducedPercentageForElectricBus= 0.02;
  
//Energy Used by Cars per KM
  parameter Real EnergyUseByPetrolCarperKM = 0.740;
  parameter Real EnergyUseByDieselCarperKM = 0.710;
  parameter Real EnergyUseByPHeVCarperKM = 0.32;
  parameter Real EnergyUseByBioGasCarperKM = 0.05;
  parameter Real EnergyUseByElectricCarperKM = 0.19;


//Energy used by light lorries per KM
  parameter Real EnergyUseByPetrolLightTrucksperKM = 0.880;
  parameter Real EnergyUseByDieselLightTrucksperKM = 0.798;
  parameter Real EnergyUseByPHeVLightTrucksperKM = 0.360;
  parameter Real EnergyUseByBioGasLightTrucksperKM = 0.731;
  parameter Real EnergyUseByElectricLightTrucksperKM = 0.214;   
  
  
//Energy used by Heavy lorries per KM
  parameter Real EnergyUseByPetrolHeavyTrucksperKM = 4.60;
  parameter Real EnergyUseByDieselHeavyTrucksperKM = 4.6;
  parameter Real EnergyUseByHydrogenHeavyTrucksperKM = 0;
  parameter Real EnergyUseByBioGasHeavyTrucksperKM =0.5;
  parameter Real EnergyUseByElectricHeavyTrucksperKM = 0.16; 


//Energy used by Bus per KM

  parameter Real EnergyUseByDieselBusperKM = 2.3;
  parameter Real EnergyUseByHydrogenBusperKM = 0.8;
  parameter Real EnergyUseByGasBusperKM =2.1;
  parameter Real EnergyUseByElectricBusperKM = 0.7;
  
//Average Cars KMs
  parameter Real AverageKMElectricCarRuns = 14910;
  parameter Real AverageKMDieselCarRuns = 14910;  
  parameter Real AverageKMPetrolCarRuns = 12280; 
  parameter Real AverageKMPHeVCarRuns = 14910;
  parameter Real AverageKMBiogasCarRuns = 14910;

//Car Conversion  Parameter

  parameter Real ConversionYearforPetrolCar = 2025;
  parameter Real ConversionPercentageforPetrolCar = 0.045;
  parameter Real ConversionYearforDieselCar = 2025;
  parameter Real ConversionPercentageforDieselCar = 0.035;
  parameter Real ConversionYearforPHeVCar = 2025;
  parameter Real ConversionPercentageforPHeVCar = 0.05;  
  parameter Real ConversionYearforBioCar = 2025;
  parameter Real ConversionPercentageforBioCar = 0.045;
  
//Light Truck Conversion  Parameter

  parameter Real ConversionYearforLightPetrolTruck = 2025;
  parameter Real ConversionPercentageforLightPetrolTruck = 0.01;
  parameter Real ConversionYearforLightDieselTruck = 2025;
  parameter Real ConversionPercentageforLightDieselTruck = 0.01;
  parameter Real ConversionYearforLightPHeVTruck = 2025;
  parameter Real ConversionPercentageforLightPHeVTruck = 0.01;  
  parameter Real ConversionYearforLightBioTruck = 2025;
  parameter Real ConversionPercentageforLightBioTruck = 0.01;
    
//Heavy Truck Conversion  Parameter

  parameter Real ConversionYearforHeavyPetrolTruck = 2025;
  parameter Real ConversionPercentageforHeavyPetrolTruck = 0.01;
  parameter Real ConversionYearforHeavyDieselTruck = 2025;
  parameter Real ConversionPercentageforHeavyDieselTruck = 0.01;
  parameter Real ConversionYearforHeavyHydrogenTruck = 2025;
  parameter Real ConversionPercentageforHeavyHydrogenTruck = 0.01;  
  parameter Real ConversionYearforHeavyBioTruck = 2025;
  parameter Real ConversionPercentageforHeavyBioTruck = 0.01;
  
  //Bus Conversion  Parameter

  parameter Real ConversionYearforHydrogenBus = 2025;
  parameter Real ConversionPercentageforHydrogenBus = 0.01;
  parameter Real ConversionYearforDieselBus = 2025;
  parameter Real ConversionPercentageforDieselBus = 0.01;
  parameter Real ConversionYearforGasBus = 2025;
  parameter Real ConversionPercentageforGasBus = 0.01;  

  
//Average Light Truck KMs
  parameter Real AverageKMLightElectricTruckRuns = 18910;
  parameter Real AverageKMLightPetrolTruckRuns = 18910;  
  parameter Real AverageKMLightDieselTruckRuns = 18910;  
  parameter Real AverageKMLightBiogasTruckRuns = 18910;
  parameter Real AverageKMLightPHeVTruckRuns = 18910;
  
//Average Heavy Truck KMs
  parameter Real AverageKMHeavyElectricTruckRuns = 18910;
  parameter Real AverageKMHeavyPetrolTruckRuns = 18910;  
  parameter Real AverageKMHeavyDieselTruckRuns = 18910;  
  parameter Real AverageKMHeavyBiogasTruckRuns = 18910;
  parameter Real AverageKMHeavyHydrogenTruckRuns = 18910;

//Average Bus KMs
  parameter Real AverageKMElectricBusRuns  = 66120;
  parameter Real AverageKMDieselBusRuns  = 66120;  
  parameter Real AverageKMGasBusRuns  = 66120; 
  parameter Real AverageKMHydrogenBusRuns  = 66120;
  
  
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
  parameter Real PetrolCarGHGEmissionGmperKWh = 260*10^(-12);
  parameter Real PetrolCarGHGEmissionGmperKWhUpstream = 72*10^(-12);
  
  parameter Real ElectricCarGHGEmissionGmperKWh = 0;
  parameter Real ElectricCarGHGEmissionGmperKWhUpstream = 25*10^(-12); 
  
  parameter Real DieselCarGHGEmissionGmperKWh  = 262*10^(-12); 
  parameter Real DieselCarGHGEmissionGmperKWhUpstream = 79*10^(-12); 
  
  parameter Real BiogasCarGHGEmissionGmperKWh = 45.5*10^(-12);
  parameter Real BiogasCarGHGEmissionGmperKWhUpstream = 45.5*10^(-12);

  
//Light Truck co2 Emission 
  parameter Real PetrolLightTruckGHGEmissionGmperKWh = 72.0*10^(-12);
  parameter Real PetrolLightTruckGHGEmissionGmperKWhUpstream = 72*10^(-12);  
  
  parameter Real ElectricLightTruckGHGEmissionGmperKWh = 0*10^(-12);
  parameter Real ElectricLightTruckGHGEmissionGmperKWhUpstream = 25*10^(-12); 
  
  parameter Real DieselLightTruckGHGEmissionGmperKWh = 262*10^(-12); 
  parameter Real DieselLightTruckGHGEmissionGmperKWhUpstream = 79*10^(-12); 
  
  parameter Real BiogasLightTruckGHGEmissionGmperKWh = 47*10^(-12);
  parameter Real BiogasLightTruckGHGEmissionGmperKWhUpstream = 45.5*10^(-12);
    
//Heavy Truck CO2 Emission
  parameter Real PetrolHeavyTruckGHGEmissionGmperKWh =  660*10^(-12);    
  parameter Real PetrolHeavyTruckGHGEmissionGmperKWhUpstream = 72*10^(-12);  

  parameter Real HydrogenHeavyTruckGHGEmissionGmperKWh =0;  
  parameter Real HydrogenHeavyTruckGHGEmissionGmperKWhUpstream = 75*10^(-12);  
  
  parameter Real ElectricHeavyTruckGHGEmissionGmperKWh = 0;
  parameter Real ElectricHeavyTruckGHGEmissionGmperKWhUpstream = 25*10^(-12); 
  
  parameter Real DieselHeavyTruckGHGEmissionGmperKWh = 582*10^(-12); 
  parameter Real DieselHeavyTruckGHGEmissionGmperKWhUpstream = 79*10^(-12); 
  
  parameter Real BiogasHeavyTruckGHGEmissionGmperKWh = 45.5*10^(-12);
  parameter Real BiogasHeavyTruckGHGEmissionGmperKWhUpstream = 45.5*10^(-12);
  
//Bus CO2 Emission

  parameter Real HydrogenBusGHGEmissionGmperKWh =0*10^(-12);  
  parameter Real HydrogenBusGHGEmissionGmperKWhUpstream = 75*10^(-12);  
  
  parameter Real ElectricBusGHGEmissionGmperKWh = 0*10^(-12);
  parameter Real ElectricBusGHGEmissionGmperKWhUpstream = 25*10^(-12); 
  
  parameter Real DieselBusGHGEmissionGmperKWh = 190*10^(-12); 
  parameter Real DieselBusGHGEmissionGmperKWhUpstream = 79*10^(-12); 
  
  parameter Real GasBusGHGEmissionGmperKWh = 45.5*10^(-12);
  parameter Real GasBusGHGEmissionGmperKWhUpstream = 45.5*10^(-12);
     
  parameter Real SampleRate = 1;
  parameter Real StartSimulationYear = 2019;
  parameter Real StartTriggerTime = 1;
  
 end TransportationParameter;
