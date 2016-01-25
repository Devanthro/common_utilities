//
// Created by bruh on 1/8/16.
//

#ifndef ROBOY_CONTROL_COMMONDEFINITIONS_H
#define ROBOY_CONTROL_COMMONDEFINITIONS_H

enum ControlMode {POSITION_CONTROL, FORCE_CONTROL};
enum STATUS {UNDEFINED=0, INITIALIZED, PREPROCESS_TRAJECTORY, TRAJECTORY_READY,TRAJECTORY_FAILED, PLAYING};
enum SteeringCommand {PLAY_TRAJECTORY};
#endif //ROBOY_CONTROL_COMMONDEFINITIONS_H
