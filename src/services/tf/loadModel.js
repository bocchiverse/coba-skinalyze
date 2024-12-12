const tf = require('@tensorflow/tfjs-node');

async function loadModel() {
    return tf.loadGraphModel('./src');
}

module.exports = loadModel;