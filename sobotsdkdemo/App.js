/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
  NativeModules
} from 'react-native';

let sobotsdk = NativeModules.SobotSDKDemoNative

export default class sobotsdkdemo extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>React-Native 调用 Sobot SDK</Text>

		<TouchableOpacity onPress={()=>sobotsdk.startSobot()}>
			<Text style={styles.btn}>启动  SobotSDK</Text>
        </TouchableOpacity>

		<TouchableOpacity onPress={()=>sobotsdk.exitSobot()}>
			<Text style={styles.btn}>退出  SobotSDK</Text>
        </TouchableOpacity>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  title:{
	marginBottom:10,
    fontSize:18,
  },
  btn:{
	marginBottom:10,
    fontSize:16,
    paddingVertical:7,
    paddingHorizontal:10,
    borderColor:'#f00',
    borderWidth:1,
    borderRadius:5,
    marginTop:10,
    color:'#f00'
  }
});

AppRegistry.registerComponent('sobotsdkdemo', () => sobotsdkdemo);