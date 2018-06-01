# *********************************************************
#
# File autogenerated for the path_provider_ros_tool package
# by the rosparam_handler package.
# Please do not edit.
#
# *********************************************************
import rospy

param_description = [{'constant': False, 'description': 'Queusize for publisher', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'msg_queue_size', 'min': 1, 'default': 5, 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Set logger level for this node', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'verbosity', 'min': None, 'default': 'info', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Topic name of publisher', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'topic_publisher', 'min': None, 'default': '/path', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'dipatcher rate in Hz', 'pytype': 'double', 'max': 20, 'is_vector': False, 'edit_method': '""', 'name': 'dipatcher_rate', 'min': 1, 'default': 10, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'double'}, {'constant': False, 'description': 'Timer rate in Hz', 'pytype': 'double', 'max': 20, 'is_vector': False, 'edit_method': '""', 'name': 'timer_rate', 'min': 1, 'default': 2, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'double'}, {'constant': False, 'description': 'Map frame ID', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'frame_id_map', 'min': None, 'default': 'map', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Vehicle frame ID', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'frame_id_vehicle', 'min': None, 'default': 'vehicle', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Top camera frame ID', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'frame_id_camera', 'min': None, 'default': 'camera_top', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Stargazer frame ID', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'frame_id_stargazer', 'min': None, 'default': 'stargazer', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}]

defaults = {}

for param in param_description:
    defaults[param['name']] = param['default']


class PathProviderParameters(dict):
    def __init__(self):
        super(self.__class__, self).__init__(defaults)
        self.from_param_server()

    __getattr__ = dict.__getitem__
    __setattr__ = dict.__setitem__

    def from_param_server(self):
        """
        Reads and initializes parameters with values from parameter server.
        Called automatically at initialization.
        """
        for k, v in self.iteritems():
            config = next((item for item in param_description if item["name"] == k), None)
            if config['constant']:
                self.test_const_param(k)
                continue

            self[k] = self.get_param(k, config)

    def from_config(self, config):
        """
        Reads parameter from a dynamic_reconfigure config file.
        Should be called in the callback of dynamic_reconfigure.
        :param config: config object from dynamic reconfigure
        """
        for k, v in config.iteritems():
            # handle reserved name groups
            if k == "groups":
                continue
            if not k in self:
                raise TypeError("Element {} of config is not part of parameters.".format(k))
            self[k] = v

    @staticmethod
    def test_const_param(param_name):
        if rospy.has_param("~" + param_name):
            rospy.logwarn(
                "Parameter {} was set on the parameter server even though it was defined to be constant.".format(
                    param_name))

    @staticmethod
    def get_param(param_name, config):
        full_name = "/" + param_name if config['global_scope'] else "~" + param_name
        val = rospy.get_param(full_name, config['default'])
        # test whether type is correct
        try:
            param_type = config['type']
            if config['is_vector']:
                val = list(val)
            elif config['is_map']:
                val = dict(val)
            elif param_type == 'std::string':
                val = str(val)
            elif param_type == 'int':
                val = int(val)
            elif param_type == 'bool':
                val = bool(val)
            elif param_type == 'float' or param_type == 'double':
                val = float(val)
        except ValueError:
            rospy.logerr(
                "Parameter {} is set, but has a different type. Using default value instead.".format(param_name))
            val = config['default']
        # test bounds
        if config['min'] is not None and config['min'] > val:
            rospy.logerr(
                "Value of {} for {} is smaller than minimal allowed value. "
                "Correcting value to min={}".format(val, param_name, config['min']))
            val = config['min']
        if config['max'] is not None and config['max'] < val:
            rospy.logerr(
                "Value of {} for {} is greater than maximal allowed value. "
                "Correcting value to max={}".format(val,param_name, config['max']))
            val = config['max']
        return val
