# *********************************************************
#
# File autogenerated for the rosinterface_handler package
# by the rosinterface_handler package.
# Please do not edit.
#
# *********************************************************
import rospy
import geometry_msgs.msg
import std_msgs.msg

inf = float('inf')
param_description = [{'constant': False, 'description': 'Sets the verbosity for this node', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'verbosity_param_w_default', 'min': None, 'default': 'info', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'An Integer parameter', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'int_param_w_default', 'min': None, 'default': 1, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'A double parameter', 'pytype': 'double', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'double_param_w_default', 'min': None, 'default': 1.1, 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'double'}, {'constant': False, 'description': 'A string parameter', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'str_param_w_default', 'min': None, 'default': 'Hello World', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'A Boolean parameter', 'pytype': 'bool', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'bool_param_w_default', 'min': None, 'default': True, 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'bool'}, {'constant': False, 'description': 'A vector of int parameter', 'max': None, 'is_vector': True, 'edit_method': '""', 'name': 'vector_int_param_w_default', 'min': None, 'default': [1, 2, 3], 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::vector<int>'}, {'constant': False, 'description': 'A vector of double parameter', 'max': None, 'is_vector': True, 'edit_method': '""', 'name': 'vector_double_param_w_default', 'min': None, 'default': [1.1, 1.2, 1.3], 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::vector<double>'}, {'constant': False, 'description': 'A vector of bool parameter', 'max': None, 'is_vector': True, 'edit_method': '""', 'name': 'vector_bool_param_w_default', 'min': None, 'default': [False, True], 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::vector<bool>'}, {'constant': False, 'description': 'A vector of string parameter', 'max': None, 'is_vector': True, 'edit_method': '""', 'name': 'vector_string_param_w_default', 'min': None, 'default': ['Hello', 'World'], 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::vector<std::string>'}, {'constant': False, 'description': 'A map parameter', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'map_param_w_default', 'min': None, 'default': {'Hello': 'World'}, 'level': 0, 'is_map': True, 'configurable': False, 'global_scope': False, 'type': 'std::map<std::string,std::string>'}, {'constant': False, 'description': 'enum', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': 'enum_int_param_w_default', 'name': 'enum_int_param_w_default', 'min': None, 'default': 1, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': True, 'description': 'Constant for enum enum_int_param_w_default', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'enum_int_param_w_default_Small', 'min': None, 'default': 0, 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'int'}, {'constant': True, 'description': 'Constant for enum enum_int_param_w_default', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'enum_int_param_w_default_Medium', 'min': None, 'default': 1, 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'int'}, {'constant': True, 'description': 'Constant for enum enum_int_param_w_default', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'enum_int_param_w_default_Large', 'min': None, 'default': 2, 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'int'}, {'constant': True, 'description': 'Constant for enum enum_int_param_w_default', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'enum_int_param_w_default_ExtraLarge', 'min': None, 'default': 3, 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'string enum', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': 'enum_str_param_w_default', 'name': 'enum_str_param_w_default', 'min': None, 'default': 'One', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': True, 'description': 'Constant for enum enum_str_param_w_default', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'enum_str_param_w_default_Zero', 'min': None, 'default': 'Zero', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': True, 'description': 'Constant for enum enum_str_param_w_default', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'enum_str_param_w_default_One', 'min': None, 'default': 'One', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': True, 'description': 'Constant for enum enum_str_param_w_default', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'enum_str_param_w_default_Two', 'min': None, 'default': 'Two', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': True, 'description': 'Constant for enum enum_str_param_w_default', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'enum_str_param_w_default_Three', 'min': None, 'default': 'Three', 'level': 0, 'is_map': False, 'configurable': False, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Topic for subscriber', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_w_default_topic', 'min': None, 'default': 'in_topic', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Queue size for subscriber', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_w_default_queue_size', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Topic for subscriber', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_diag_w_default_topic', 'min': None, 'default': 'in_point_topic', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Queue size for subscriber', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_diag_w_default_queue_size', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Minimal message frequency for subscriber', 'pytype': 'double', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_diag_w_default_min_frequency', 'min': None, 'default': 0.0, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'double'}, {'constant': False, 'description': 'Maximal delay for subscriber', 'pytype': 'double', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_diag_w_default_max_delay', 'min': None, 'default': inf, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'double'}, {'constant': False, 'description': 'Topic for public subscriber', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_public_w_default_topic', 'min': None, 'default': 'in_topic', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Queue size for public subscriber', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_public_w_default_queue_size', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Topic for global subscriber', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_global_w_default_topic', 'min': None, 'default': 'in_topic', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Queue size for global subscriber', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'subscriber_global_w_default_queue_size', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Topic for publisher', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_w_default_topic', 'min': None, 'default': 'out_topic', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Queue size for publisher', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_w_default_queue_size', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Topic for publisher', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_diag_w_default_topic', 'min': None, 'default': 'out_point_topic', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Queue size for publisher', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_diag_w_default_queue_size', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Minimal message frequency for publisher', 'pytype': 'double', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_diag_w_default_min_frequency', 'min': None, 'default': 0.0, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'double'}, {'constant': False, 'description': 'Maximal delay for publisher', 'pytype': 'double', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_diag_w_default_max_delay', 'min': None, 'default': inf, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'double'}, {'constant': False, 'description': 'Topic for public publisher', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_public_w_default_topic', 'min': None, 'default': 'out_topic', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Queue size for public publisher', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_public_w_default_queue_size', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}, {'constant': False, 'description': 'Topic for global publisher', 'pytype': 'str', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_global_w_default_topic', 'min': None, 'default': 'out_topic', 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'std::string'}, {'constant': False, 'description': 'Queue size for global publisher', 'pytype': 'int', 'max': None, 'is_vector': False, 'edit_method': '""', 'name': 'publisher_global_w_default_queue_size', 'min': 0, 'default': 5, 'level': 0, 'is_map': False, 'configurable': True, 'global_scope': False, 'type': 'int'}]
subscriber_description = [{'topic_param': 'subscriber_w_default_topic', 'description': 'subscriber', 'header': None, 'min_frequency_param': None, 'import': 'std_msgs.msg', 'name': 'subscriber_w_default', 'queue_size_param': 'subscriber_w_default_queue_size', 'no_delay': False, 'configurable': True, 'max_delay_param': None, 'diagnosed': False, 'scope': 'private', 'type': 'std_msgs::Header'}, {'topic_param': 'subscriber_diag_w_default_topic', 'description': 'subscriber', 'header': None, 'min_frequency_param': 'subscriber_diag_w_default_min_frequency', 'import': 'geometry_msgs.msg', 'name': 'subscriber_diag_w_default', 'queue_size_param': 'subscriber_diag_w_default_queue_size', 'no_delay': False, 'configurable': True, 'max_delay_param': 'subscriber_diag_w_default_max_delay', 'diagnosed': True, 'scope': 'private', 'type': 'geometry_msgs::PointStamped'}, {'topic_param': 'subscriber_public_w_default_topic', 'description': 'public subscriber', 'header': None, 'min_frequency_param': None, 'import': 'std_msgs.msg', 'name': 'subscriber_public_w_default', 'queue_size_param': 'subscriber_public_w_default_queue_size', 'no_delay': False, 'configurable': True, 'max_delay_param': None, 'diagnosed': False, 'scope': 'public', 'type': 'std_msgs::Header'}, {'topic_param': 'subscriber_global_w_default_topic', 'description': 'global subscriber', 'header': None, 'min_frequency_param': None, 'import': 'std_msgs.msg', 'name': 'subscriber_global_w_default', 'queue_size_param': 'subscriber_global_w_default_queue_size', 'no_delay': False, 'configurable': True, 'max_delay_param': None, 'diagnosed': False, 'scope': 'global', 'type': 'std_msgs::Header'}]
publisher_description = [{'topic_param': 'publisher_w_default_topic', 'description': 'publisher', 'header': None, 'min_frequency_param': None, 'scope': 'private', 'name': 'publisher_w_default', 'queue_size_param': 'publisher_w_default_queue_size', 'configurable': True, 'max_delay_param': None, 'diagnosed': False, 'import': 'std_msgs.msg', 'type': 'std_msgs::Header'}, {'topic_param': 'publisher_diag_w_default_topic', 'description': 'publisher', 'header': None, 'min_frequency_param': 'publisher_diag_w_default_min_frequency', 'scope': 'private', 'name': 'publisher_diag_w_default', 'queue_size_param': 'publisher_diag_w_default_queue_size', 'configurable': True, 'max_delay_param': 'publisher_diag_w_default_max_delay', 'diagnosed': True, 'import': 'geometry_msgs.msg', 'type': 'geometry_msgs::PointStamped'}, {'topic_param': 'publisher_public_w_default_topic', 'description': 'public publisher', 'header': None, 'min_frequency_param': None, 'scope': 'public', 'name': 'publisher_public_w_default', 'queue_size_param': 'publisher_public_w_default_queue_size', 'configurable': True, 'max_delay_param': None, 'diagnosed': False, 'import': 'std_msgs.msg', 'type': 'std_msgs::Header'}, {'topic_param': 'publisher_global_w_default_topic', 'description': 'global publisher', 'header': None, 'min_frequency_param': None, 'scope': 'global', 'name': 'publisher_global_w_default', 'queue_size_param': 'publisher_global_w_default_queue_size', 'configurable': True, 'max_delay_param': None, 'diagnosed': False, 'import': 'std_msgs.msg', 'type': 'std_msgs::Header'}]
verbosity_param = "verbosity_param_w_default"
tf_config = {'broadcaster_name': 'tf_broadcaster', 'listener_name': 'tf_listener', 'buffer_name': 'tf_buffer'}

if subscriber_description:
    # only import if necessary
    import message_filters
if verbosity_param:
    import logging
if tf_config:
    import tf2_ros


defaults = {}

for param in param_description:
    defaults[param['name']] = param['default']
for subscriber in subscriber_description:
    defaults[subscriber['name']] = None
for publisher in publisher_description:
    defaults[publisher['name']] = None


class DefaultsInterface(dict):
    def __init__(self):
        super(self.__class__, self).__init__(defaults)
        self.from_param_server()
        if tf_config:
            self._init_tf()

    __getattr__ = dict.__getitem__
    __setattr__ = dict.__setitem__

    def from_param_server(self):
        """
        Reads and initializes parameters, subscribers and publishers with values from parameter server.
        Called automatically at initialization.
        """
        for k, v in self.iteritems():
            config = next((item for item in param_description if item["name"] == k), None)
            if not config:
                continue
            if config['constant']:
                self.test_const_param(k)
                continue
            self[k] = self.get_param(k, config)

        for subscriber in subscriber_description:
            name = subscriber['name']
            topic = self._get_topic(subscriber['scope'], self[subscriber['topic_param']])

            # rescue the callbacks if existing
            if name in self and self[name]:
                callbacks = self[name].callbacks
                self[name].callbacks = {}
            else:
                callbacks = {}
            self[name] = message_filters.Subscriber(topic, self.get_type(subscriber),
                                                    queue_size=self[subscriber['queue_size_param']],
                                                    tcp_nodelay=subscriber['no_delay'])
            self[name].callbacks = callbacks
        for publisher in publisher_description:
            name = publisher['name']
            topic = self._get_topic(publisher['scope'], self[publisher['topic_param']])
            self[name] = rospy.Publisher(topic, self.get_type(publisher),
                                         queue_size=self[publisher['queue_size_param']])
        if verbosity_param:
            logging.getLogger('rosout').setLevel(self._map_verbosity(self[verbosity_param]))

    def to_param_server(self):
        """
        Sets parameters with current values on the parameter server.
        """
        for param_name, param_value in self.iteritems():
            config = next((item for item in param_description if item["name"] == param_name), None)
            if config and not config['constant']:
                full_name = "/" + param_name if config['global_scope'] else "~" + param_name
                rospy.set_param(full_name, param_value)
               
    def from_config(self, config):
        """
        Reads parameter from a dynamic_reconfigure config file.
        Should be called in the callback of dynamic_reconfigure.
        :param config: config object from dynamic reconfigure
        """
        if verbosity_param and verbosity_param in config and config[verbosity_param] != self[verbosity_param]:
            logging.getLogger('rosout').setLevel(self._map_verbosity(config[verbosity_param]))
            rospy.logdebug("Verbosity set to " + config[verbosity_param])
        for subscriber in subscriber_description:
            topic_param = subscriber['topic_param']
            if not topic_param in config:
                continue
            name = subscriber['name']
            queue_param = subscriber['queue_size_param']
            if config[topic_param] != self[topic_param] or config[queue_param] != self[queue_param]:
                callbacks = self[name].callbacks
                self[name].callbacks = {}
                topic = self._get_topic(subscriber['scope'], config[topic_param])
                self[name] = message_filters.Subscriber(topic, self.get_type(subscriber),
                                                        queue_size=config[queue_param],
                                                        tcp_nodelay=subscriber['no_delay'])
                self[name].callbacks = callbacks
        for publisher in publisher_description:
            topic_param = publisher['topic_param']
            if not topic_param in config:
                continue
            name = publisher['name']
            queue_param = publisher['queue_size_param']
            topic = self._get_topic(publisher['scope'], config[topic_param])
            if config[topic_param] != self[topic_param] or config[queue_param] != self[queue_param]:
                self[name] = rospy.Publisher(topic, self.get_type(publisher), queue_size=config[queue_param])
        for k, v in config.iteritems():
            # handle reserved name groups
            if k == "groups":
                continue
            if not k in self:
                raise TypeError("Element {} of config is not part of parameters.".format(k))
            self[k] = v

    def _init_tf(self):
            listener = tf_config["listener_name"]
            buffer = tf_config["buffer_name"]
            broadcaster = tf_config["broadcaster_name"]
            if buffer:
                self[buffer] = tf2_ros.Buffer()
            if listener:
                self[listener] = tf2_ros.TransformListener(self[buffer])
            if broadcaster:
                self[broadcaster] = tf2_ros.TransformBroadcaster

    @staticmethod
    def test_const_param(param_name):
        if rospy.has_param("~" + param_name):
            rospy.logwarn(
                "Parameter {} was set on the parameter server even though it was defined to be constant.".format(
                    param_name))

    @staticmethod
    def get_param(param_name, config):
        def get_type(type_string):
            if type_string == 'std::string':
                return str
            elif type_string == 'int':
                return int
            elif type_string == 'bool':
                return bool
            elif type_string == 'float' or type_string == 'double':
                return float
            else:
                raise ValueError()

        full_name = "/" + param_name if config['global_scope'] else "~" + param_name
        try:
            val = rospy.get_param(full_name)
        except KeyError:
            if config['default'] is None:
                raise KeyError("Parameter {} is neither set on the parameter server nor "
                               "has it a default value".format(param_description))
            rospy.loginfo("Parameter {} is not yet set. Setting default value".format(param_name))
            rospy.set_param(full_name, config['default'])
            val = config['default']

        # test whether type is correct
        try:
            if config['is_vector']:
                val = list(val)
                config_type = config['type']
                val_type = get_type(config_type[config_type.find("<")+1:config_type.find(">")])
                val = [ val_type(v) for v in val ]
            elif config['is_map']:
                val = dict(val)
                config_type = config['type']
                key_type = get_type(config_type[config_type.find("<")+1:config_type.find(",")])
                val_type = get_type(config_type[config_type.find(",")+1:config_type.find(">")])
                val = { key_type(key): val_type(v) for key, v in val.items() }
            else:
                val = get_type(config['type'])(val)
        except ValueError:
            rospy.logerr(
                "Parameter {} is set, but has a different type. Using default value instead.".format(param_name))
            val = config['default']
        # test bounds
        if config['min'] is not None:
            if config['is_vector']:
                if min(val) < config['min']:
                    rospy.logwarn(
                        "Some values in {} for {} are smaller than minimal allowed value. "
                        "Correcting them to min={}".format(val, param_name, config['min']))
                    val = [ v if v > config['min'] else config['min'] for v in val ]
            elif config['is_map']:
                if min(val.values()) < config['min']:
                    rospy.logwarn(
                        "Some values in {} for {} are smaller than minimal allowed value. "
                        "Correcting them to min={}".format(val, param_name, config['min']))
                    val = { k: (v if v > config['min'] else config['min']) for k, v in val.items() }
            elif val < config['min']:
                rospy.logwarn(
                    "Value of {} for {} is smaller than minimal allowed value. "
                    "Correcting value to min={}".format(val, param_name, config['min']))
                val = config['min']

        if config['max'] is not None:
            if config['is_vector']:
                if max(val) > config['max']:
                    rospy.logwarn(
                        "Some values in {} for {} are greater than maximal allowed value. "
                        "Correcting them to max={}".format(val, param_name, config['max']))
                    val = [ v if v < config['max'] else config['max'] for v in val ]
            elif config['is_map']:
                if max(val.values()) > config['max']:
                    rospy.logwarn(
                        "Some values in {} for {} are greater than maximal allowed value. "
                        "Correcting them to max={}".format(val, param_name, config['max']))
                    val = { k: (v if v < config['max'] else config['max']) for k, v in val.items() }
            elif val > config['max']:
                rospy.logwarn(
                    "Value of {} for {} is greater than maximal allowed value. "
                    "Correcting value to max={}".format(val, param_name, config['max']))
                val = config['max']
        return val

    @staticmethod
    def get_type(config):
        return eval(config['import'] + '.' + config['type'].split('::')[-1])


    @staticmethod
    def _get_topic(scope, topic):
        if not topic.startswith('/') and scope != 'public':
            return "/" + topic if scope == 'global' else "~" + topic
        return topic

    @staticmethod
    def _map_verbosity(verbosity):
        return {
              'DEBUG':    logging.DEBUG,
              'INFO':     logging.INFO,
              'WARN':     logging.WARN,
              'WARNING':  logging.WARN,
              'ERROR':    logging.ERROR,
              'FATAL':    logging.FATAL,
              }[verbosity.upper()]
