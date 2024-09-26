"""
Script to add the operating status
as a tag to a number of input measurements.

The script by default runs over the last 24 hours,
in chunks of 3 hours each.

The list of measurements can easily be extended
by adding one to the meas_config block.

An optional "averaging" of the data, before
appending the operating status, is possible.
To do this, set the "apply_avg" key in the
config to "True" and specify the "avg_freq"
key with a value in minutes. E.g., writing
"avg_freq" : 2 will result in a resampling
of the data with '2min' frequency.

Giorgia Rossato
April 2022
"""

class InfluxDatabase(Database):
    def __init__(self, db, writer):
        self.db = db
        self.writer = writer 

rc_raw = InfluxDatabase(writer=False,
                        db="21016_MOW_raw")

rc_derived = InfluxDatabase(writer=False,
                            db="21016_MOW_derived")

wc_derived = InfluxDatabase(writer=True, 
                            db="21016_MOW_derived")


meas_config = {
    "displacement": {
        "read_client": rc_raw,
        "field": "value",
        "tags": [ "location", "side", "mounted_on", "sensor_id", "unit"],
        "additional_clause": "",
        "apply_avg": False,
        "avg_freq": 0,
    },
    "clean_angular_displacement": {
        "read_client": rc_derived,
        "field": "value",
        "tags": ["location","side", "mounted_on", "sensor_id", "unit"],
        "additional_clause": "",
        "apply_avg": False,
        "avg_freq": 0,
    },
    "inclination_agg": {
        "read_client": rc_raw,
        "field": "value",
        "tags": ["location", "side", "direction", "location_description", "mounted_on", "sensor_id", "unit"],
        "additional_clause": "",
        "apply_avg": False,
        "avg_freq": 0,
    },
    "acceleration_agg": {
        "read_client": rc_raw,
        "field": "rms_ms",
        "tags": ["location", "side", "direction", "location_description", "mounted_on", "sensor_id", "unit"],
        "additional_clause": "",                                         
        "apply_avg": False,
        "avg_freq": 0,
    },
    "bolt_strain": {
        "read_client": rc_raw,
        "field": "value",
        "tags": ["location", "side", "location_description", "mounted_on", "sensor_id", "unit"],
        "additional_clause": "",
        "apply_avg": False,
        "avg_freq": 0,
    },
    "strain": {
        "read_client": rc_raw,
        "field": "value",
        "tags": ["location", "side", "location_description", "mounted_on", "sensor_id", "unit"],
        "additional_clause": "",
        "apply_avg": False,
        "avg_freq": 0,
    },
}

@simple_window(
    window=timedelta(hours=25),
    overlap=timedelta(hours=1),
    dependent_measurements=['regime_status', *meas_config.keys()]
)
def process_data(meas_name):
    """
    This function loads the input data between given start and end time,
    applies the function to calculate the averages if needed,
    applies the function to combine this data with the operational status,
    and writes the resulting dataframe to derived.
    """ 
    meas_field      = meas_config[meas_name]["field"]
    meas_tags       = meas_config[meas_name]["tags"]
    read_client     = meas_config[meas_name]["read_client"]
    apply_average   = meas_config[meas_name]["apply_avg"]
    add_clause      = meas_config[meas_name]["additional_clause"]
    
    locations = ['upstream', 'downstream']
    sides = ['left','right']

    df = read_client.read(meas_name)
    return df 
        
#         for location in locations:
#             for side in sides:

#                 if add_clause :
#                     clause = add_clause + (" AND location = '%s'  AND side = '%s' " % (location,side))
#                 else:
#                     clause = ("location = '%s'  AND side = '%s' " % (location,side))
                
#                 # Load the input data
#                 df = read_client.query_measurement_iterative(
#                     measurement=meas_name,
#                     start_date=start,
#                     end_date=end,
#                     additional_clause = clause,
#                     fields_to_query= [meas_field]+meas_tags
#                 )

#                 if df.empty:
#                     logger.info("No {0} data available for this period. Continuing for next door.".format(meas_name))
#                     continue
                
#                 df = df.rename(columns={meas_field: "value"})

#                 # Apply averageing if needed
#                 if apply_average:
#                     avg_freq = meas_config[meas_name]["avg_freq"]
#                     df_av = apply_average(df, meas_tags, avg_freq)
#                     if df_av.empty: 
#                         logger.info("Couldn't calculate the average.")
#                         return 0
#                 else:
#                     df_av = df


#                 # Combine with the operational status
#                 df_combined = get_and_add_operational_status(df_av)
#                 if df_combined.empty:
#                     logger.info("Couldn't combine operational status data.")
#                     return 0
#                 df_combined["value"] = df_combined["value"].astype(float)
#                 df_combined = df_combined.dropna().rename(columns={"value": meas_field})
                
#                 # Prepare the tags for writing to the database
#                 tags = {
#                     "datasource": "add_regime_status_tag.py",
#                     "info": "the data is linked with an operating status tag "
#                                 "and optionally averaged over a window determined "
#                                 "by the 'frequency'-tag",
#                 }
#                 tag_columns = meas_tags + ['status_value', 'status']
#                 if apply_average: 
#                     tag_columns += ['frequency']
                
#                 # Write new measurements to database  
#                 wc_derived.write_points(
#                     df_combined,
#                     measurement=meas_name+"_classified",
#                     tags=tags,
#                     tag_columns=tag_columns,
#                     batch_size=10000,
#                     time_precision="n",
#                 )

def main():    
    # Process blocks per given time step
    #process_data("displacement")
    return rc_derived.read("boe")

main()