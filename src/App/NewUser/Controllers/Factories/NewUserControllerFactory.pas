(*!------------------------------------------------------------
 * [[APP_NAME]] ([[APP_URL]])
 *
 * @link      [[APP_REPOSITORY_URL]]
 * @copyright Copyright (c) [[COPYRIGHT_YEAR]] [[COPYRIGHT_HOLDER]]
 * @license   [[LICENSE_URL]] ([[LICENSE]])
 *------------------------------------------------------------- *)
unit NewUserControllerFactory;

interface

{$MODE OBJFPC}
{$H+}

uses
    fano;

type

    (*!-----------------------------------------------
     * Factory for controller TNewUserController
     *
     * @author [[AUTHOR_NAME]] <[[AUTHOR_EMAIL]]>
     *------------------------------------------------*)
    TNewUserControllerFactory = class(TFactory, IDependencyFactory)
    public
        function build(const container : IDependencyContainer) : IDependency; override;
    end;

implementation

uses
    sysutils,

    {*! -------------------------------
        unit interfaces
    ----------------------------------- *}
    NewUserController;

    function TNewUserControllerFactory.build(const container : IDependencyContainer) : IDependency;
    begin
        //build your controller instance here.
        //container will gives you access to all registered services
        result := TNewUserController.create();
    end;
end.
