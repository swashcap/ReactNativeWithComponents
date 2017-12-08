import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent, StyleSheet } from 'react-native';

const RNTTitleView = requireNativeComponent('RNTTitleView', Title);

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'transparent',
    flex: 1,
    width: '100%',
  },
});

class Title extends Component {
  render() {
    return (
      <RNTTitleView
        style={styles.container}
        text={this.props.children}
      />
    );
  }
}

export default Title;
