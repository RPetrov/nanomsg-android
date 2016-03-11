//
// Created by rpetrov on 3/10/16.
//

#include <string.h>
#include <jni.h>
#include <nn.h>

void Java_com_hill30_tcptest_Nanow_bind(JNIEnv *env, jobject thiz) {
    nn_bind(0, "tcp://127.0.0.1:7802");
}