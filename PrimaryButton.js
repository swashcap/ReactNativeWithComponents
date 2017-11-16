import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent, StyleSheet } from 'react-native';

const RNPrimaryButton = requireNativeComponent('RNTPrimaryButton', PrimaryButton);
const styles = StyleSheet.create({
  container: {
    flex: 1,
    width: '100%'
  }
});

class PrimaryButton extends Component {
  render() {
    const { children, onPress } = this.props;

    return (
      <RNPrimaryButton
        onPress={onPress}
        style={styles.container}
        text={children}
      />
    );
  }
}

PrimaryButton.propTypes = {
  /** Button's text */
  children: PropTypes.string.isRequired,

  /** Press event handler */
  onPress: PropTypes.func.isRequired,
};

export default PrimaryButton;
