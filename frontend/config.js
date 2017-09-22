var webpack = require('webpack');
var path = require('path');


module.exports = function (config) {
    var publicPath = '';

    var devTool = config.devServer ? 'source-map' : 'source-map';

    var loaders = [
        {
            test: /\.html$/,
            loader: 'html',
            exclude: ['./node_modules']
        },
        {
            test: /\.js$/,
            loader: "babel-loader",
            query: {
                presets: [require.resolve('babel-preset-es2015')]
            },
            exclude: /node_modules/
        },
        {
            test: /\.ts$/,
            loader: 'ts-loader?configFileName=tsconfig.webpack.json',
            exclude: './node_modules'
        },
        {
            test: /\.css$/,
            loader: 'style-loader!css-loader',
            exclude: './node_modules'
        },
        {
            test: /\.scss$/,
            loaders: ["style", "css?sourceMap", "sass?sourceMap"]
        },
        {test: /\.otf/, loader: "url-loader?limit=100000"},
        {test: /\.jpeg/, loader: "url-loader?limit=100000"},
        {test: /\.png/, loader: "url-loader?limit=100000"},


        { test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: "url-loader?limit=10000&minetype=application/font-woff" },
        {test: /\.woff(\?v=\d+\.\d+\.\d+)?$/, loader: "url?limit=10000&minetype=application/font-woff"},
        {test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/, loader: "url?limit=10000&minetype=application/octet-stream"},
        {test: /\.eot(\?v=\d+\.\d+\.\d+)?$/, loader: "file"},
        {test: /\.svg(\?v=\d+\.\d+\.\d+)?$/, loader: "url?limit=10000&minetype=image/svg+xml"},
        {test: /\.json/, loader: "json-loader?limit=100000"},
        {test: /\.(eot|woff|ttf)(\?.*)?$/, loader: "url?limit=100000"}
    ];

    var entry, output, plugins, externals,resolve,resolveLoader;

    entry = {
        main: './src/js/app.js',
        vendor: [
            'angular',
            '@uirouter/angularjs',
            'bootstrap',
            'jquery'
        ]
    };

    output = {
        path: './build',
        publicPath: publicPath,
        filename: 'bundle.js'
    };

    resolve = {
        modulesDirectories: [path.resolve('./node_modules')],
        extensions: ['', '.js', '.jsx', '.scss', '.less', '.json', '.html']
    };

    resolveLoader = {
        root: [path.resolve(__dirname, 'node_modules')]
    };

    var HtmlWebpackPlugin = require('html-webpack-plugin');
    plugins = [
        new HtmlWebpackPlugin({
            inject: true,
            template: './src/index.html'
        }),
        new webpack.optimize.CommonsChunkPlugin('vendor', 'vendor.bundle.js'),
        new webpack.ProvidePlugin({
            $: "jquery",
            jQuery: "jquery",
            "window.jQuery": "jquery",
            d3: 'd3'
        })
    ];

    return {
        entry: entry,
        devtool: devTool,
        plugins: plugins,
        externals: externals,
        resolveLoader: resolveLoader,
        resolve: resolve,
        module: {
            loaders: loaders
        },
        output: output
    }
};