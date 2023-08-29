echo "creating conda environment"
conda create -p venv python==3.7 -y
echo "canda environmet created"

echo "activate conda env"
conda activate ./venv
echo "conda env. activated successfully"

echo "create project structure"
mkdir app_config app_exception app_logger app_pipeline app_src app_util app_config app_entity
echo "project strucutre created successfully"

echo "start creating python script for each module"
touch app_entity/__init__.py app_entity/config_entity.py
echo "app config file created successfully"

echo "start creating app exception script"
touch app_exception/__init__.py app_exception/exception.py
echo "app exception script created"

echo "start creating app logger script"
touch app_logger/__init__.py app_logger/logger.py

echo "start creating app pipeline script"
touch app_pipeline/__init__.py app_pipeline/training_pipeline.py app_pipeline/prediction_pipeline.py
echo "app pipeline script created"

echo "start creating app src script"
touch app_src/__init__.py app_src/stage_00_data_ingestion.py app_src/stage_01_data_validation.py app_src/stage_02_data_transformation.py
touch app_src/stage_03_model_trainer.py app_src/stage_04_model_evaluation.py
touch app_src/stage_05_model_pusher.py
echo "app src script created"

echo "start creating app_util script"
touch app_util/__init__.py app_util/util.py
echo "app util script created"

echo "start creating requirements file"
touch requirements.txt

echo "start creating set up file"
touch setup.py

echo "All required python scripts created successfully"

echo "create configuration file"
mkdir config
touch config/config.yaml

echo "final configuration file created successfully"