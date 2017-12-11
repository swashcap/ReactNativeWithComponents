import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent, StyleSheet } from 'react-native';

const RNTBodyView = requireNativeComponent(
  'RNTBodyView',
  Body
);

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'transparent',
    flex: 1,
    width: '100%',
  },
});

class Body extends Component {
  render() {
    return (
      <RNTBodyView
        style={styles.container}
        text={this.props.children}
      />
    );
  }
}

Body.defaultProps = {
  text: '',
};

Body.propTypes = {
  children: PropTypes.string,
};

export default Body;

