import warnings
from pathlib import Path
from typing import Dict
import mlflow
import typer

from config import config
from config.config import logger

# Initialize Typer CLI app
app = typer.Typer()
warnings.filterwarnings("ignore")


@app.command()
def process(
    args_fp: str = "config/args_meg_preproc.json",
    experiment_name: str = "process",
    run_name: str = "process",
    test_run: bool = False,
) -> None:
    #processing code goes here (e.g., model inference):

    #Log preproccesing
    logger.info("✅ sucessfully processed data")
    mlflow.set_experiment(experiment_name)
    with mlflow.start_run(run_name=run_name) as run:
        print_info.print_run_info(run)
        run_id = mlflow.active_run().info.run_id
        mlflow.log_params(args)
        #mlflow.log_param("output_filepath", csv_output_path)




@app.command()
def train(
    args_fp: str = "config/arg.json",
    experiment_name: str = "Train",
    test_run: bool = False,
) -> None:
    if not test_run:
        mlflow.set_experiment(experiment_name)
        with mlflow.start_run(run_name=run_name):
            run_id = mlflow.active_run().info.run_id
            mlflow.log_params(args)


@app.command()
def preprocess(
    experiment_name: str = 'experiment_name',
    args_ecg: str = "config/args.json",
    run_name: str = "Preprocess",
    test_run: bool = True,
):
    #Preprocessing code goes here:

    #Log preproccesing
    logger.info("✅ sucessfully preprocessed data")
    mlflow.set_experiment(experiment_name)
    with mlflow.start_run(run_name=run_name) as run:
        print_info.print_run_info(run)
        run_id = mlflow.active_run().info.run_id
        mlflow.log_params(args)
        #mlflow.log_param("output_filepath", csv_output_path)


@app.command()
def evaluate(
    args_rr: str = "config/args.json",
    experiment_name: str = "Evaluation",
    test_run: bool = False,
):
    raise(NotImplementedError)


if __name__ == "__main__":
    app()  # pragma: no cover, live app
