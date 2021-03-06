/**
 * @file username component
 * @author treelite(c.xinle@gmail.com)
 */

define(function (require) {
    var inherits = require('saber-lang/inherits');
    var Abstract = require('./Abstract');

    /**
     * UserName
     *
     * @constructor
     * @param {string} data
     */
    function UserName(data) {
        Abstract.call(this, data);
    }

    inherits(UserName, Abstract);

    return UserName;
});
