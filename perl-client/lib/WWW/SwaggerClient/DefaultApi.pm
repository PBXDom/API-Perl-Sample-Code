#
# Copyright 2016 SmartBear Software
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
#
package WWW::SwaggerClient::DefaultApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# calls_get
#
# 
# 
# @param double $rpt_type Report type. (0 report, 1 widget, 2 chart). (required)
# @param double $rpt_id Report id. (required)
# @param Number $start Start offset. (optional)
# @param Number $limit Number of results to return. Max 10K. (optional)
# @param string $sort_by Sort column. (optional)
# @param string $sort_type Sort mode asc/desc. (optional)
# @param string $from_date Start date time. (optional)
# @param string $to_date End date time. (optional)
# @param Number $duration Duration range. (optional)
# @param string $phone List of caller phone. (optional)
# @param string $phone1 List of dialled phones. (optional)
# @param string $co List of trunk/co. (optional)
# @param string $ext list of extensions. (optional)
# @param Number $pbx_id list of PBX Ids. (optional)
# @param Number $call_source list of callsource. (optional)
# @param Number $call_type list of call type signatures.(5 Unanswered Calls, 7 Transfered Calls, 8 Forwarded Calls) (optional)
# @param Number $direction list of direction.(0 incoming, 1 outgoing, 2 internal) (optional)
# @param string $caller_name list of caller name. (optional)
# @param string $did list of did. (optional)
# @param string $dnis list of dnis. (optional)
# @param string $acc list of account code. (optional)
# @param Number $ring Ring range.Seconds unit. (optional)
# @param Number $cost Cost range. (optional)
# @param Number $group Department/Group id. (optional)
{
    my $params = {
    'rpt_type' => {
        data_type => 'double',
        description => 'Report type. (0 report, 1 widget, 2 chart).',
        required => '1',
    },
    'rpt_id' => {
        data_type => 'double',
        description => 'Report id.',
        required => '1',
    },
    'start' => {
        data_type => 'Number',
        description => 'Start offset.',
        required => '0',
    },
    'limit' => {
        data_type => 'Number',
        description => 'Number of results to return. Max 10K.',
        required => '0',
    },
    'sort_by' => {
        data_type => 'string',
        description => 'Sort column.',
        required => '0',
    },
    'sort_type' => {
        data_type => 'string',
        description => 'Sort mode asc/desc.',
        required => '0',
    },
    'from_date' => {
        data_type => 'string',
        description => 'Start date time.',
        required => '0',
    },
    'to_date' => {
        data_type => 'string',
        description => 'End date time.',
        required => '0',
    },
    'duration' => {
        data_type => 'Number',
        description => 'Duration range.',
        required => '0',
    },
    'phone' => {
        data_type => 'string',
        description => 'List of caller phone.',
        required => '0',
    },
    'phone1' => {
        data_type => 'string',
        description => 'List of dialled phones.',
        required => '0',
    },
    'co' => {
        data_type => 'string',
        description => 'List of trunk/co.',
        required => '0',
    },
    'ext' => {
        data_type => 'string',
        description => 'list of extensions.',
        required => '0',
    },
    'pbx_id' => {
        data_type => 'Number',
        description => 'list of PBX Ids.',
        required => '0',
    },
    'call_source' => {
        data_type => 'Number',
        description => 'list of callsource.',
        required => '0',
    },
    'call_type' => {
        data_type => 'Number',
        description => 'list of call type signatures.(5 Unanswered Calls, 7 Transfered Calls, 8 Forwarded Calls)',
        required => '0',
    },
    'direction' => {
        data_type => 'Number',
        description => 'list of direction.(0 incoming, 1 outgoing, 2 internal)',
        required => '0',
    },
    'caller_name' => {
        data_type => 'string',
        description => 'list of caller name.',
        required => '0',
    },
    'did' => {
        data_type => 'string',
        description => 'list of did.',
        required => '0',
    },
    'dnis' => {
        data_type => 'string',
        description => 'list of dnis.',
        required => '0',
    },
    'acc' => {
        data_type => 'string',
        description => 'list of account code.',
        required => '0',
    },
    'ring' => {
        data_type => 'Number',
        description => 'Ring range.Seconds unit.',
        required => '0',
    },
    'cost' => {
        data_type => 'Number',
        description => 'Cost range.',
        required => '0',
    },
    'group' => {
        data_type => 'Number',
        description => 'Department/Group id.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ calls_get } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[InlineResponse200]',
        };
}
# @return ARRAY[InlineResponse200]
#
sub calls_get {
    my ($self, %args) = @_;

    # verify the required parameter 'rpt_type' is set
    unless (exists $args{'rpt_type'}) {
      croak("Missing the required parameter 'rpt_type' when calling calls_get");
    }

    # verify the required parameter 'rpt_id' is set
    unless (exists $args{'rpt_id'}) {
      croak("Missing the required parameter 'rpt_id' when calling calls_get");
    }

    # parse inputs
    my $_resource_path = '/Calls';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'rpt_type'}) {
        $query_params->{'rptType'} = $self->{api_client}->to_query_value($args{'rpt_type'});
    }

    # query params
    if ( exists $args{'rpt_id'}) {
        $query_params->{'rptId'} = $self->{api_client}->to_query_value($args{'rpt_id'});
    }

    # query params
    if ( exists $args{'start'}) {
        $query_params->{'start'} = $self->{api_client}->to_query_value($args{'start'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'sort_by'}) {
        $query_params->{'sortBy'} = $self->{api_client}->to_query_value($args{'sort_by'});
    }

    # query params
    if ( exists $args{'sort_type'}) {
        $query_params->{'sortType'} = $self->{api_client}->to_query_value($args{'sort_type'});
    }

    # query params
    if ( exists $args{'from_date'}) {
        $query_params->{'fromDate'} = $self->{api_client}->to_query_value($args{'from_date'});
    }

    # query params
    if ( exists $args{'to_date'}) {
        $query_params->{'toDate'} = $self->{api_client}->to_query_value($args{'to_date'});
    }

    # query params
    if ( exists $args{'duration'}) {
        $query_params->{'duration'} = $self->{api_client}->to_query_value($args{'duration'});
    }

    # query params
    if ( exists $args{'phone'}) {
        $query_params->{'phone'} = $self->{api_client}->to_query_value($args{'phone'});
    }

    # query params
    if ( exists $args{'phone1'}) {
        $query_params->{'phone1'} = $self->{api_client}->to_query_value($args{'phone1'});
    }

    # query params
    if ( exists $args{'co'}) {
        $query_params->{'co'} = $self->{api_client}->to_query_value($args{'co'});
    }

    # query params
    if ( exists $args{'ext'}) {
        $query_params->{'ext'} = $self->{api_client}->to_query_value($args{'ext'});
    }

    # query params
    if ( exists $args{'pbx_id'}) {
        $query_params->{'pbxId'} = $self->{api_client}->to_query_value($args{'pbx_id'});
    }

    # query params
    if ( exists $args{'call_source'}) {
        $query_params->{'callSource'} = $self->{api_client}->to_query_value($args{'call_source'});
    }

    # query params
    if ( exists $args{'call_type'}) {
        $query_params->{'callType'} = $self->{api_client}->to_query_value($args{'call_type'});
    }

    # query params
    if ( exists $args{'direction'}) {
        $query_params->{'direction'} = $self->{api_client}->to_query_value($args{'direction'});
    }

    # query params
    if ( exists $args{'caller_name'}) {
        $query_params->{'callerName'} = $self->{api_client}->to_query_value($args{'caller_name'});
    }

    # query params
    if ( exists $args{'did'}) {
        $query_params->{'did'} = $self->{api_client}->to_query_value($args{'did'});
    }

    # query params
    if ( exists $args{'dnis'}) {
        $query_params->{'dnis'} = $self->{api_client}->to_query_value($args{'dnis'});
    }

    # query params
    if ( exists $args{'acc'}) {
        $query_params->{'acc'} = $self->{api_client}->to_query_value($args{'acc'});
    }

    # query params
    if ( exists $args{'ring'}) {
        $query_params->{'ring'} = $self->{api_client}->to_query_value($args{'ring'});
    }

    # query params
    if ( exists $args{'cost'}) {
        $query_params->{'cost'} = $self->{api_client}->to_query_value($args{'cost'});
    }

    # query params
    if ( exists $args{'group'}) {
        $query_params->{'group'} = $self->{api_client}->to_query_value($args{'group'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[InlineResponse200]', $response);
    return $_response_object;
}

#
# features_charts_get
#
# 
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ features_charts_get } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[InlineResponse200]',
        };
}
# @return ARRAY[InlineResponse200]
#
sub features_charts_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/Features/charts';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[InlineResponse200]', $response);
    return $_response_object;
}

#
# features_reports_get
#
# 
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ features_reports_get } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[InlineResponse200]',
        };
}
# @return ARRAY[InlineResponse200]
#
sub features_reports_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/Features/reports';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[InlineResponse200]', $response);
    return $_response_object;
}

#
# features_widget_get
#
# 
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ features_widget_get } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[InlineResponse200]',
        };
}
# @return ARRAY[InlineResponse200]
#
sub features_widget_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/Features/widget';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[InlineResponse200]', $response);
    return $_response_object;
}

1;