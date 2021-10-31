const Process = require('child_process');
const { Node } = require('control-core');

class TestNode extends Node {
	static TYPE = 'test-node';

	run() {
		return new Promise((resolve, reject) => {
			const { message='Graph running' } = this.config;
			return ChildProcess.exec(`echo "::debug::${message}"`, (err, stdout, stderr) => {
				if(err) {
					return reject(err);
				}

				return resolve(stdout);
			});
		});
	}
}

module.exports = { TestNode };
