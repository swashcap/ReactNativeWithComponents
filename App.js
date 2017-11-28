/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Image,
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';

import Card from './Card';
import PrimaryButton from './PrimaryButton';
import sampleImage from './sample-image.png';

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

export default class App extends Component<{}> {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit App.js
        </Text>
        <Text style={styles.instructions}>
          {instructions}
        </Text>
        <PrimaryButton onPress={() => console.log('pressed')}>
          Native primary button
        </PrimaryButton>
        <Card type='simple'>
          <Text style={styles.title}>Simple Card</Text>
          <Image
            source={sampleImage}
            style={styles.image}
          />
          <Text style={styles.bodyText}>The card is a native container element with children added in react-native.</Text>
        </Card>
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
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
  title: {
    color: 'red',
    fontSize: 16,
    fontWeight: '700',
    textAlign: 'center'
  },
  bodyText: {
    fontSize: 14
  },
  image: {
    height: 100,
    width: 100
  }
});
