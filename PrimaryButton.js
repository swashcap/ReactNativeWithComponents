import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent } from 'react-native';

const RNPrimaryButton = requireNativeComponent('RNPrimaryButton', PrimaryButton);

class PrimaryButton extends Component {
  render() {
    const { children, onPress } = this.props;

    return <RNPrimaryButton onPress={onPress} text={children} />;
  }
}

PrimaryButton.propTypes = {
  /** Button's text */
  children: PropTypes.string.isRequired,

  /** Press event handler */
  onPress: PropTypes.func.isRequired,
};

export default PrimaryButton;
