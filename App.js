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
  constructor(...args) {
    super(...args);

    this.state = {
      isEnabled: true
    };
    this.toggle = this.toggle.bind(this);
  }

  toggle() {
    console.log('App#toggle called');
    this.setState({
      isEnabled: !this.state.isEnabled
    });
  }

  render() {
    const img = this.state.isEnabled ?
      (
        <Image
          source={sampleImage}
          style={styles.image}
        />
      ) :
      undefined;

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
        <PrimaryButton onPress={this.toggle}>
          Native primary button
        </PrimaryButton>
        <View style={{ padding: 20 }}>
          <Card type='simple'>
            <View style={{ width: 20, height: 20, backgroundColor: 'hotpink' }} />
            {img}
            <Text style={styles.title}>Simple Card</Text>
            <Text style={styles.bodyText}>The card is a native container element with children added in react-native.</Text>
          </Card>
        </View>
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
    backgroundColor: 'transparent',
    color: 'red',
    fontSize: 16,
    fontWeight: '700',
    textAlign: 'center'
  },
  bodyText: {
    backgroundColor: 'transparent',
    fontSize: 14
  },
  image: {
    backgroundColor: 'pink',
    height: 100,
    minHeight: 10,
    minWidth: 10,
    padding: 10,
    width: 100
  }
});
