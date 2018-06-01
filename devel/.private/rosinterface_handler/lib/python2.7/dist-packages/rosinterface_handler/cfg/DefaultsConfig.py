## *********************************************************
##
## File autogenerated for the rosinterface_handler package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 292, 'description': 'An Integer parameter', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'int_param_w_default', 'edit_method': '', 'default': 1, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 292, 'description': 'enum', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'enum_int_param_w_default', 'edit_method': "{'enum_description': 'enum', 'enum': [{'srcline': 15, 'description': '', 'srcfile': '/home/kal5-1/cargogo/devel/.private/rosinterface_handler/share/rosinterface_handler/cfg/Defaults.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Small'}, {'srcline': 16, 'description': '', 'srcfile': '/home/kal5-1/cargogo/devel/.private/rosinterface_handler/share/rosinterface_handler/cfg/Defaults.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Medium'}, {'srcline': 17, 'description': '', 'srcfile': '/home/kal5-1/cargogo/devel/.private/rosinterface_handler/share/rosinterface_handler/cfg/Defaults.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Large'}, {'srcline': 18, 'description': '', 'srcfile': '/home/kal5-1/cargogo/devel/.private/rosinterface_handler/share/rosinterface_handler/cfg/Defaults.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'ExtraLarge'}]}", 'default': 1, 'level': 0, 'min': -2147483648, 'type': 'int'}, {'srcline': 292, 'description': 'string enum', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'enum_str_param_w_default', 'edit_method': "{'enum_description': 'string enum', 'enum': [{'srcline': 21, 'description': '', 'srcfile': '/home/kal5-1/cargogo/devel/.private/rosinterface_handler/share/rosinterface_handler/cfg/Defaults.cfg', 'cconsttype': 'const char * const', 'value': 'Zero', 'ctype': 'std::string', 'type': 'str', 'name': 'Zero'}, {'srcline': 22, 'description': '', 'srcfile': '/home/kal5-1/cargogo/devel/.private/rosinterface_handler/share/rosinterface_handler/cfg/Defaults.cfg', 'cconsttype': 'const char * const', 'value': 'One', 'ctype': 'std::string', 'type': 'str', 'name': 'One'}, {'srcline': 23, 'description': '', 'srcfile': '/home/kal5-1/cargogo/devel/.private/rosinterface_handler/share/rosinterface_handler/cfg/Defaults.cfg', 'cconsttype': 'const char * const', 'value': 'Two', 'ctype': 'std::string', 'type': 'str', 'name': 'Two'}, {'srcline': 24, 'description': '', 'srcfile': '/home/kal5-1/cargogo/devel/.private/rosinterface_handler/share/rosinterface_handler/cfg/Defaults.cfg', 'cconsttype': 'const char * const', 'value': 'Three', 'ctype': 'std::string', 'type': 'str', 'name': 'Three'}]}", 'default': 'One', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Topic for subscriber', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_w_default_topic', 'edit_method': '', 'default': 'in_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Queue size for subscriber', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_w_default_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Topic for subscriber', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_diag_w_default_topic', 'edit_method': '', 'default': 'in_point_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Queue size for subscriber', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_diag_w_default_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Minimal message frequency for subscriber', 'max': inf, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_diag_w_default_min_frequency', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -inf, 'type': 'double'}, {'srcline': 292, 'description': 'Maximal delay for subscriber', 'max': inf, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_diag_w_default_max_delay', 'edit_method': '', 'default': 1e+308, 'level': 0, 'min': -inf, 'type': 'double'}, {'srcline': 292, 'description': 'Topic for public subscriber', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_public_w_default_topic', 'edit_method': '', 'default': 'in_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Queue size for public subscriber', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_public_w_default_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Topic for global subscriber', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_global_w_default_topic', 'edit_method': '', 'default': 'in_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Queue size for global subscriber', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'subscriber_global_w_default_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Topic for publisher', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_w_default_topic', 'edit_method': '', 'default': 'out_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Queue size for publisher', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_w_default_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Topic for publisher', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_diag_w_default_topic', 'edit_method': '', 'default': 'out_point_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Queue size for publisher', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_diag_w_default_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Minimal message frequency for publisher', 'max': inf, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_diag_w_default_min_frequency', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -inf, 'type': 'double'}, {'srcline': 292, 'description': 'Maximal delay for publisher', 'max': inf, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_diag_w_default_max_delay', 'edit_method': '', 'default': 1e+308, 'level': 0, 'min': -inf, 'type': 'double'}, {'srcline': 292, 'description': 'Topic for public publisher', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_public_w_default_topic', 'edit_method': '', 'default': 'out_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Queue size for public publisher', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_public_w_default_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 292, 'description': 'Topic for global publisher', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_global_w_default_topic', 'edit_method': '', 'default': 'out_topic', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 292, 'description': 'Queue size for global publisher', 'max': 2147483647, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'publisher_global_w_default_queue_size', 'edit_method': '', 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Defaults_Small = 0
Defaults_Medium = 1
Defaults_Large = 2
Defaults_ExtraLarge = 3
Defaults_Zero = 'Zero'
Defaults_One = 'One'
Defaults_Two = 'Two'
Defaults_Three = 'Three'
