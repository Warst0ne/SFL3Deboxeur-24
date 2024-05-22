<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.6.3.55 SP?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1" />
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="VisCtrl" Source="VisCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <VcDataObjects>
    <VcDataObject Name="VisuPP" Source="VisuPP70sync.dob" Memory="UserROM" Language="Vc" WarningLevel="2" />
  </VcDataObjects>
</SwConfiguration>