<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:clipper  Version:1.0.0.0 - Sat Jun 26 19:02:36 UTC 2021 -->
  <!-- Generated from the PDS4 Information Model Version 1.15.0.0 - System Build 11a -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/clipper/v1" prefix="clipper"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/clipper:CLIPPER_Parameters">
      <sch:assert test="if ( 
                            (clipper:spacecraft_clock_count_partition) 
                            or 
                            ( (contains(clipper:spacecraft_clock_start_count,'/') ) 
                               and
                              (contains(clipper:spacecraft_clock_stop_count,'/') ) 
                            ) 
                            or 
                            ( (not (clipper:spacecraft_clock_count_partition)) 
                               and (not (clipper:spacecraft_clock_start_count)) 
                               and (not (clipper:spacecraft_clock_stop_count)) 
                            ) 
                           ) then true() else false() 
            ">
        <title>clipper.sclk_rule/Rule</title>
        
                clipper:error:sclk_rule_0: If clipper:spacecraft_clock_start_count and clipper:spacecraft_clock_stop_count are
                present, they must begin with a partition number followed by a forward slash, OR the partition number must be given by
                clipper:spacecraft_clock_count_partition. 
            </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:begin_temperature_fpa">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:begin_temperature_fpa/clipper:begin_temperature_fpa</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:begin_temperature_scs">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:begin_temperature_scs/clipper:begin_temperature_scs</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:begin_temperature_scs_raw">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:begin_temperature_scs_raw/clipper:begin_temperature_scs_raw</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:end_temperature_fpa">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:end_temperature_fpa/clipper:end_temperature_fpa</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:end_temperature_scs">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:end_temperature_scs/clipper:end_temperature_scs</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:instrument_mode_id">
      <sch:assert test=". = ('BW', 'COLOR', 'UV', 'VIS')">
        <title>clipper:EIS_Parameters/clipper:instrument_mode_id/clipper:instrument_mode_id</title>
        The attribute clipper:instrument_mode_id must be equal to one of the following values 'BW', 'COLOR', 'UV', 'VIS'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:interframe_delay">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        <title>clipper:EIS_Parameters/clipper:interframe_delay/clipper:interframe_delay</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:line_exposure_duration">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        <title>clipper:EIS_Parameters/clipper:line_exposure_duration/clipper:line_exposure_duration</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:lookup_table_type">
      <sch:assert test=". = ('STORED')">
        <title>clipper:EIS_Parameters/clipper:lookup_table_type/clipper:lookup_table_type</title>
        The attribute clipper:lookup_table_type must be equal to the value 'STORED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:middle_temperature_fpa">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:middle_temperature_fpa/clipper:middle_temperature_fpa</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:middle_temperature_scs">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:middle_temperature_scs/clipper:middle_temperature_scs</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:temperature_fpa">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:temperature_fpa/clipper:temperature_fpa</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:temperature_fpga">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:temperature_fpga/clipper:temperature_fpga</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:temperature_scs">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:temperature_scs/clipper:temperature_scs</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:EIS_Parameters/clipper:temperature_telescope">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:EIS_Parameters/clipper:temperature_telescope/clipper:temperature_telescope</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:ETHEMIS_Parameters/clipper:instrument_mode_id">
      <sch:assert test=". = ('BW', 'COLOR', 'UV', 'VIS')">
        <title>clipper:ETHEMIS_Parameters/clipper:instrument_mode_id/clipper:instrument_mode_id</title>
        The attribute clipper:instrument_mode_id must be equal to one of the following values 'BW', 'COLOR', 'UV', 'VIS'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:ETHEMIS_Parameters/clipper:interframe_delay">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        <title>clipper:ETHEMIS_Parameters/clipper:interframe_delay/clipper:interframe_delay</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:ETHEMIS_Parameters/clipper:line_exposure_duration">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr')">
        <title>clipper:ETHEMIS_Parameters/clipper:line_exposure_duration/clipper:line_exposure_duration</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:ETHEMIS_Parameters/clipper:maximum_brightness_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:ETHEMIS_Parameters/clipper:maximum_brightness_temperature/clipper:maximum_brightness_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:ETHEMIS_Parameters/clipper:minimum_brightness_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>clipper:ETHEMIS_Parameters/clipper:minimum_brightness_temperature/clipper:minimum_brightness_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:ETHEMIS_Parameters/clipper:time_delay_integration_flag">
      <sch:assert test=". = ('DISABLED', 'ENABLED')">
        <title>clipper:ETHEMIS_Parameters/clipper:time_delay_integration_flag/clipper:time_delay_integration_flag</title>
        The attribute clipper:time_delay_integration_flag must be equal to one of the following values 'DISABLED', 'ENABLED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:Observation_Information/clipper:mission_phase_name">
      <sch:assert test="if (not(@xsi:nil eq 'true') and (not(. = ('Capture Orbit', 'Inner Cruise 1', 'Jupiter Approach', 'Orbits 1-2', 'Outer Cruise', 'Period Reduction Maneuver', 'Quiet Cruise', 'Science Orbits')))) then false() else true()">
        <title>clipper:Observation_Information/clipper:mission_phase_name/clipper:mission_phase_name</title>
        The attribute clipper:mission_phase_name must be nulled or equal to one of the following values 'Capture Orbit', 'Inner Cruise 1', 'Jupiter Approach', 'Orbits 1-2', 'Outer Cruise', 'Period Reduction Maneuver', 'Quiet Cruise', 'Science Orbits'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="clipper:Observation_Information/clipper:product_type">
      <sch:assert test=". = ('CDR', 'EDR', 'RDR')">
        <title>clipper:Observation_Information/clipper:product_type/clipper:product_type</title>
        The attribute clipper:product_type must be equal to one of the following values 'CDR', 'EDR', 'RDR'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
