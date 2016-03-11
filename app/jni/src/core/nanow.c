//
// Created by rpetrov on 3/10/16.
//

#include <string.h>
#include <jni.h>

#include "../nn.h"
#include "../pipeline.h"

void Java_com_hill30_tcptest_Nanow_bind(JNIEnv *env, jobject thiz) {

  int sock = nn_socket (AF_SP, NN_PULL);
  nn_bind (sock, "tcp://127.0.0.1:9000");
   

}