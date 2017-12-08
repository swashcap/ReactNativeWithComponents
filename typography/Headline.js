import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent, StyleSheet } from 'react-native';

const RNTHeadlineView = requireNativeComponent(
  'RNTHeadlineView',
  Headline
);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    width: '100%',
  }
});

class Headline extends Component {
  render() {
    return (
      <RNTHeadlineView
        style={styles.container}
        text={this.props.children}
      />
    );
  }
}

Headline.defaultProps = {
  children: '',
};

Headline.propTypes = {
  children: PropTypes.string,
};

export default Headline;
