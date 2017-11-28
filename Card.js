import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent, StyleSheet } from 'react-native';

const RNTCard = requireNativeComponent('RNTCard', Card);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    width: '100%'
  }
});

class Card extends Component {
  render() {
    const { children, type } = this.props;

    return (
      <RNTCard type={type}>
        {children}
      </RNTCard>
    );
  }
}

Card.defaultProps = {
  children: undefined,
  type: 'simple'
};

Card.propTypes = {
  children: PropTypes.node,
  type: PropTypes.oneOf(['simple', 'fancy'])
};

export default Card;
