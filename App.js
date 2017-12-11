/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View
} from 'react-native';

import Body from './typography/Body';
import Card from './Card';
import Headline from './typography/Headline';
import PrimaryButton from './PrimaryButton';
import Title from './typography/Title';
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
      <ScrollView contentContainerStyle={styles.container}>
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

        <Headline>This is a headline</Headline>
        <Title>This is a title</Title>
        <Body>This is body text. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</Body>

        <View style={{ height: 200, padding: 20 }}>
          <Card type='simple'>
            <Text style={styles.title}>Simple Card</Text>
            {img}
            <Text style={styles.bodyText}>The card is a native container element with children added in react-native.</Text>
            <PrimaryButton onPress={this.toggle}>
              Native primary button
            </PrimaryButton>
          </Card>
        </View>
      </ScrollView>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
    paddingVertical: 20
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
