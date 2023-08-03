/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {SafeAreaView, View, Text, Button} from 'react-native';
import {NativeModules} from 'react-native';
const {CalendarModule} = NativeModules;
console.log(CalendarModule);

const App = () => {
  const onPress = () => {
    console.log('Button was pressed');
    CalendarModule.createCalendarEvent('testname', 'testLocation', (responseFromNative: any) => console.log(responseFromNative));
  };
  return (
    <View>
      <SafeAreaView>
        <Text>Hello</Text>
        <Button onPress={onPress} title={'Press me'} />
      </SafeAreaView>
    </View>
  );
};

export default App;
