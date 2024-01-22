(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * File: Global.typ
 * Author: strickers
 * Created: May 02, 2012
 ********************************************************************
 * Global data types of project Cognex_1
 ********************************************************************)

TYPE
	cognex_sta_typ : 	STRUCT 
		connected_eth : BOOL;
		connected_plk : BOOL;
		trigger_ready : BOOL;
		trigger_ack : BOOL;
		acquiring : BOOL;
		missed_acq : BOOL;
		offline_reason : USINT;
		online : BOOL;
		inspecting : BOOL;
		inspecting_complete : BOOL;
		results_buffer_overrun : BOOL;
		results_valid : BOOL;
		job_loading : BOOL;
		job_load_complete : BOOL;
		job_load_failed : BOOL;
		set_user_data_ack : BOOL;
		exposure_complete : BOOL;
		soft_event_ack : USINT;
		job_id : UINT;
	END_STRUCT;
	cognex_cmd_typ : 	STRUCT 
		trigger_enable : BOOL;
		trigger : BOOL;
		buffer_result_enable : BOOL;
		inspection_result_ack : BOOL;
		init_job_load : BOOL;
		set_offline : BOOL;
		set_user_data : BOOL;
		clr_exposure_complete : BOOL;
		soft_event : USINT;
		job_id : UINT;
		ping_camera : BOOL;
	END_STRUCT;
	cognex_typ : 	STRUCT 
		cmd : cognex_cmd_typ;
		sta : cognex_sta_typ;
	END_STRUCT;
END_TYPE
