
"use strict";

let VFR_HUD = require('./VFR_HUD.js');
let ESCStatus = require('./ESCStatus.js');
let GPSRTK = require('./GPSRTK.js');
let GPSINPUT = require('./GPSINPUT.js');
let CellularStatus = require('./CellularStatus.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let GPSRAW = require('./GPSRAW.js');
let Param = require('./Param.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let Thrust = require('./Thrust.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let TerrainReport = require('./TerrainReport.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let ExtendedState = require('./ExtendedState.js');
let RCOut = require('./RCOut.js');
let State = require('./State.js');
let VehicleInfo = require('./VehicleInfo.js');
let CameraImageCaptured = require('./CameraImageCaptured.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let WaypointReached = require('./WaypointReached.js');
let CommandCode = require('./CommandCode.js');
let ESCInfo = require('./ESCInfo.js');
let StatusText = require('./StatusText.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let PositionTarget = require('./PositionTarget.js');
let FileEntry = require('./FileEntry.js');
let HilControls = require('./HilControls.js');
let RadioStatus = require('./RadioStatus.js');
let Trajectory = require('./Trajectory.js');
let Mavlink = require('./Mavlink.js');
let RCIn = require('./RCIn.js');
let BatteryStatus = require('./BatteryStatus.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let ParamValue = require('./ParamValue.js');
let HilSensor = require('./HilSensor.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let LandingTarget = require('./LandingTarget.js');
let HilGPS = require('./HilGPS.js');
let HomePosition = require('./HomePosition.js');
let ActuatorControl = require('./ActuatorControl.js');
let DebugValue = require('./DebugValue.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let RTKBaseline = require('./RTKBaseline.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let Altitude = require('./Altitude.js');
let WaypointList = require('./WaypointList.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let MountControl = require('./MountControl.js');
let ManualControl = require('./ManualControl.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let LogData = require('./LogData.js');
let SysStatus = require('./SysStatus.js');
let Tunnel = require('./Tunnel.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let RTCM = require('./RTCM.js');
let Waypoint = require('./Waypoint.js');
let Vibration = require('./Vibration.js');
let LogEntry = require('./LogEntry.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');

module.exports = {
  VFR_HUD: VFR_HUD,
  ESCStatus: ESCStatus,
  GPSRTK: GPSRTK,
  GPSINPUT: GPSINPUT,
  CellularStatus: CellularStatus,
  TimesyncStatus: TimesyncStatus,
  GPSRAW: GPSRAW,
  Param: Param,
  ESCStatusItem: ESCStatusItem,
  PlayTuneV2: PlayTuneV2,
  ADSBVehicle: ADSBVehicle,
  Thrust: Thrust,
  CamIMUStamp: CamIMUStamp,
  TerrainReport: TerrainReport,
  AttitudeTarget: AttitudeTarget,
  ExtendedState: ExtendedState,
  RCOut: RCOut,
  State: State,
  VehicleInfo: VehicleInfo,
  CameraImageCaptured: CameraImageCaptured,
  HilStateQuaternion: HilStateQuaternion,
  WaypointReached: WaypointReached,
  CommandCode: CommandCode,
  ESCInfo: ESCInfo,
  StatusText: StatusText,
  OnboardComputerStatus: OnboardComputerStatus,
  PositionTarget: PositionTarget,
  FileEntry: FileEntry,
  HilControls: HilControls,
  RadioStatus: RadioStatus,
  Trajectory: Trajectory,
  Mavlink: Mavlink,
  RCIn: RCIn,
  BatteryStatus: BatteryStatus,
  MagnetometerReporter: MagnetometerReporter,
  ParamValue: ParamValue,
  HilSensor: HilSensor,
  OpticalFlowRad: OpticalFlowRad,
  EstimatorStatus: EstimatorStatus,
  LandingTarget: LandingTarget,
  HilGPS: HilGPS,
  HomePosition: HomePosition,
  ActuatorControl: ActuatorControl,
  DebugValue: DebugValue,
  HilActuatorControls: HilActuatorControls,
  RTKBaseline: RTKBaseline,
  ESCInfoItem: ESCInfoItem,
  CompanionProcessStatus: CompanionProcessStatus,
  Altitude: Altitude,
  WaypointList: WaypointList,
  NavControllerOutput: NavControllerOutput,
  MountControl: MountControl,
  ManualControl: ManualControl,
  GlobalPositionTarget: GlobalPositionTarget,
  LogData: LogData,
  SysStatus: SysStatus,
  Tunnel: Tunnel,
  OverrideRCIn: OverrideRCIn,
  RTCM: RTCM,
  Waypoint: Waypoint,
  Vibration: Vibration,
  LogEntry: LogEntry,
  ESCTelemetry: ESCTelemetry,
  WheelOdomStamped: WheelOdomStamped,
  ESCTelemetryItem: ESCTelemetryItem,
};
