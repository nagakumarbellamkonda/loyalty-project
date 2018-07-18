/* @flow */

import React, { Component } from 'react';
import { Text, View, StyleSheet } from 'react-native';

import { material } from 'react-native-typography';
import withWeb3 from '../withWeb3';

class Container extends Component<{
	children: *,
	web3: *,
}> {
	render() {
		const { web3 } = this.props;

		return (
			<View style={styles.Container}>
				<View style={styles.Header}>
					<Text style={material.body1White}>
						Tokens in the ethereum ecosystem can represent any fungible tradable
						good. In this project we use points as tokens. each address can be associated with a customer
						and each customer can have points based on the loyalty.
					</Text>
				</View>
				{this.props.children}
			</View>
		);
	}
}

export default withWeb3(Container);

const styles = StyleSheet.create({
	Container: {
		flex: 1,
	},
	Header: {
		paddingVertical: 20,
		paddingHorizontal: 12,
		backgroundColor: '#336699',
	},
	title: {
		paddingHorizontal: 12,
		paddingVertical: 9,
		backgroundColor: '#777',
	},
});
