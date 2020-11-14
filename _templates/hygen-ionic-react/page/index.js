const path = require("path");
module.exports = {
    params: ({args}) => {

        let srcGoSourcePath = `./${path.relative('./src/', `./src/pages/${args.path}`)}`;
        let basename = path.basename(args.path);
        /**
         * If the name is not passed,
         * take the basename of the path as the name,
         * which is used to generate the class name
         */
        if (!args.name) {
            args.name = basename;
        }
        let gobackdefaultUrl = args.gobackdefaultUrl;
        let title = args.title;
        if (!args.gobackdefaultUrl) {
            gobackdefaultUrl = '/';
        }
        if (!args.title) {
            title = args.name;
        }
        let data = {path: args.path, srcGoSourcePath, name: args.name, gobackdefaultUrl,title};
        console.log(data);
        return data;
    }
}
