var Exercise = React.createClass({

	/*render: function(){
		//var createItem = (exercise) => <li>{exercise.name}</li>;
		return(

			<p> hej </p>
			//<ul>{this.props.exercise.map(createItem)}</ul>
			
		);
	}*/
	 render () {
	 	return <h2> Hi {this.props.exercise}!</h2>;
	 }
});

/** ES6 Javascript 6 */
/*class Exercise extends React.Component {
	render(){
		return (<h2> Hi {this.props.exercise}!</h2>);
	}
}

Exercise.propTypes = {
		exercise: React.PropTypes.string
};*/