
"use strict";

let CommandTriggerInterval = require('./CommandTriggerInterval.js')
let ParamGet = require('./ParamGet.js')
let FileMakeDir = require('./FileMakeDir.js')
let WaypointClear = require('./WaypointClear.js')
let FileRemove = require('./FileRemove.js')
let CommandTOL = require('./CommandTOL.js')
let FileRename = require('./FileRename.js')
let CommandHome = require('./CommandHome.js')
let CommandVtolTransition = require('./CommandVtolTransition.js')
let MessageInterval = require('./MessageInterval.js')
let CommandLong = require('./CommandLong.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let ParamPull = require('./ParamPull.js')
let ParamSet = require('./ParamSet.js')
let ParamPush = require('./ParamPush.js')
let WaypointPull = require('./WaypointPull.js')
let FileList = require('./FileList.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let FileClose = require('./FileClose.js')
let FileChecksum = require('./FileChecksum.js')
let SetMode = require('./SetMode.js')
let MountConfigure = require('./MountConfigure.js')
let FileOpen = require('./FileOpen.js')
let LogRequestList = require('./LogRequestList.js')
let FileWrite = require('./FileWrite.js')
let FileRead = require('./FileRead.js')
let CommandInt = require('./CommandInt.js')
let FileTruncate = require('./FileTruncate.js')
let SetMavFrame = require('./SetMavFrame.js')
let VehicleInfoGet = require('./VehicleInfoGet.js')
let StreamRate = require('./StreamRate.js')
let CommandBool = require('./CommandBool.js')
let CommandAck = require('./CommandAck.js')
let LogRequestData = require('./LogRequestData.js')
let WaypointPush = require('./WaypointPush.js')
let FileRemoveDir = require('./FileRemoveDir.js')

module.exports = {
  CommandTriggerInterval: CommandTriggerInterval,
  ParamGet: ParamGet,
  FileMakeDir: FileMakeDir,
  WaypointClear: WaypointClear,
  FileRemove: FileRemove,
  CommandTOL: CommandTOL,
  FileRename: FileRename,
  CommandHome: CommandHome,
  CommandVtolTransition: CommandVtolTransition,
  MessageInterval: MessageInterval,
  CommandLong: CommandLong,
  LogRequestEnd: LogRequestEnd,
  ParamPull: ParamPull,
  ParamSet: ParamSet,
  ParamPush: ParamPush,
  WaypointPull: WaypointPull,
  FileList: FileList,
  CommandTriggerControl: CommandTriggerControl,
  WaypointSetCurrent: WaypointSetCurrent,
  FileClose: FileClose,
  FileChecksum: FileChecksum,
  SetMode: SetMode,
  MountConfigure: MountConfigure,
  FileOpen: FileOpen,
  LogRequestList: LogRequestList,
  FileWrite: FileWrite,
  FileRead: FileRead,
  CommandInt: CommandInt,
  FileTruncate: FileTruncate,
  SetMavFrame: SetMavFrame,
  VehicleInfoGet: VehicleInfoGet,
  StreamRate: StreamRate,
  CommandBool: CommandBool,
  CommandAck: CommandAck,
  LogRequestData: LogRequestData,
  WaypointPush: WaypointPush,
  FileRemoveDir: FileRemoveDir,
};
