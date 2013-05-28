require 'test_helper'

class DatosSignificativosControllerTest < ActionController::TestCase
  setup do
    @datos_significativo = datos_significativos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_significativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_significativo" do
    assert_difference('DatosSignificativo.count') do
      post :create, datos_significativo: { accidentes: @datos_significativo.accidentes, asalto: @datos_significativo.asalto, cambio_residencia: @datos_significativo.cambio_residencia, carcel: @datos_significativo.carcel, divorcio: @datos_significativo.divorcio, embarazo: @datos_significativo.embarazo, enfermedades: @datos_significativo.enfermedades, matricula: @datos_significativo.matricula, muertes: @datos_significativo.muertes, otros: @datos_significativo.otros, perdida_de_empleo: @datos_significativo.perdida_de_empleo, problemas_economicos: @datos_significativo.problemas_economicos, problemas_escolares: @datos_significativo.problemas_escolares, problemas_genericos: @datos_significativo.problemas_genericos, secuestro: @datos_significativo.secuestro, separacion: @datos_significativo.separacion }
    end

    assert_redirected_to datos_significativo_path(assigns(:datos_significativo))
  end

  test "should show datos_significativo" do
    get :show, id: @datos_significativo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_significativo
    assert_response :success
  end

  test "should update datos_significativo" do
    put :update, id: @datos_significativo, datos_significativo: { accidentes: @datos_significativo.accidentes, asalto: @datos_significativo.asalto, cambio_residencia: @datos_significativo.cambio_residencia, carcel: @datos_significativo.carcel, divorcio: @datos_significativo.divorcio, embarazo: @datos_significativo.embarazo, enfermedades: @datos_significativo.enfermedades, matricula: @datos_significativo.matricula, muertes: @datos_significativo.muertes, otros: @datos_significativo.otros, perdida_de_empleo: @datos_significativo.perdida_de_empleo, problemas_economicos: @datos_significativo.problemas_economicos, problemas_escolares: @datos_significativo.problemas_escolares, problemas_genericos: @datos_significativo.problemas_genericos, secuestro: @datos_significativo.secuestro, separacion: @datos_significativo.separacion }
    assert_redirected_to datos_significativo_path(assigns(:datos_significativo))
  end

  test "should destroy datos_significativo" do
    assert_difference('DatosSignificativo.count', -1) do
      delete :destroy, id: @datos_significativo
    end

    assert_redirected_to datos_significativos_path
  end
end
