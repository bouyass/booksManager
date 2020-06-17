package booksManager.com.Test.View;

import java.io.IOException;
import java.io.InputStream;

import javax.swing.ImageIcon;

import org.eclipse.jdt.internal.compiler.batch.Main;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;
import javafx.stage.Stage;

public class MainApp extends Application {

	private Stage primaryStage;
	private BorderPane rootLayout;
	public TextFlow display = null;

	public Stage getPrimaryStage() {
		return primaryStage;
	}

	@Override
	public void start(Stage primaryStage) {
		this.primaryStage = primaryStage;
		this.primaryStage.setTitle("Test de non régression");

		initRootLayout();
		showTestsOverview();
	}

	public void initRootLayout() {
		try {
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(MainApp.class.getResource("mainGUI.fxml"));
			rootLayout = (BorderPane) loader.load();

			Scene scene = new Scene(rootLayout);
			primaryStage.setScene(scene);
			primaryStage.show();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public void showTestsOverview() {
		try {
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(MainApp.class.getResource("contentView.fxml"));
			AnchorPane testsOverview = (AnchorPane) loader.load();
			rootLayout.setCenter(testsOverview);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	

	@FXML
	public void executeFailedLoginTest(ActionEvent event) {
		Text text1 = new Text("Test running ...\n");
		InputStream input = getClass().getResourceAsStream("../ressources/check.png");
		if (input == null) {
			System.out.println("Input est null");
		} else {
			Image image = new Image(input);
			ImageView imageView = new ImageView(image);
			Label label = new Label("Failed login finished successfully", imageView);
			this.display.getChildren().addAll(text1, label);
		}
	}

	public static void main(String[] args) {
		launch(args);
	}
}
